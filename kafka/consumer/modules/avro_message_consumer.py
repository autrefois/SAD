from confluent_kafka import KafkaError, DeserializingConsumer
from confluent_kafka.schema_registry import SchemaRegistryClient
from confluent_kafka.schema_registry.avro import AvroDeserializer
from confluent_kafka.serialization import StringDeserializer
from datetime import datetime
import json
import logging
import psycopg2
import psycopg2.extras
import requests
from time import sleep


class AvroMessageConsumer:
    consumer = None
    host = 'host.docker.internal'
    tfserver_url = None
    predict_evaluator = None
    db_conn = None
    cursor = None

    def __init__(self, config_file, schema_file, topic, predict_model, predict_evaluator, custom_encoder) -> None:
        logging.info(' Initializing consumer...')
        config = json.load(open(config_file))
        self.tfserver_url = config['tfserver_config']['url']
        self.tfserver_url = '{}/{}:predict'.format(self.tfserver_url.replace('$$HOST$$', self.host), predict_model)
        logging.info(' Tensorflow serving from {}'.format(self.tfserver_url))
        self.predict_evaluator = predict_evaluator
        consumer_config = config['consumer_config']
        consumer_config['bootstrap.servers'] = consumer_config['bootstrap.servers'].replace('$$HOST$$', self.host)
        schema_registry_config = config['schema_registry_config']
        with open(schema_file) as f:
            schema_str = f.read()
        self.consumer = self._init_consumer(consumer_config, schema_str, schema_registry_config, custom_encoder)
        self.consumer.subscribe([topic])
        logging.info(' Consumer subscribed to topic {}.'.format(topic))
        self.db_conn = psycopg2.connect(
            host=self.host,
            database="postgres",
            port=5432,
            user="svc_kafka",
            password="kafka")
        self.cursor = self.db_conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    def _init_consumer(self, consumer_config, schema_str, schema_registry_config, custom_encoder):
        schema_registry_config['url'] = schema_registry_config['url'].replace('$$HOST$$', self.host)
        schema_registry_client = SchemaRegistryClient(schema_registry_config)
        avro_deserializer = AvroDeserializer(
            schema_registry_client=schema_registry_client,
            schema_str=schema_str,
            from_dict=custom_encoder
        )
        string_deserializer = StringDeserializer('utf_8')
        consumer_config.update({
                "key.deserializer": string_deserializer,
                "value.deserializer": avro_deserializer
            }
        )
        consumer = DeserializingConsumer(consumer_config)
        return consumer

    def _make_prediction(self, instances):
        data = json.dumps({"signature_name": "serving_default", "instances": instances})
        headers = {"content-type": "application/json"}
        try:
            json_response = requests.post(self.tfserver_url, data=data, headers=headers)
            json_response.raise_for_status()
        except requests.exceptions.HTTPError as h:
            logging.error(' Prediction request could not be fulfilled.')
            raise h
        predictions = json.loads(json_response.text)['predictions']
        return predictions

    def consume_msg(self):
        while True:
            try:
                message = self.consumer.poll(timeout=30)
                if not message:
                    # TODO: check brokers down
                    logging.info(' Waiting for messsage...')
                elif message.error():
                    if message.error() == KafkaError._PARTITION_EOF:
                        logging.warning(
                            ' Reached the end of {} [{}] at offset {}'
                            .format(message.topic(),
                                    message.partition(),
                                    message.offset()))
                    else:
                        logging.error(
                            ' Consumer error: {}'.format(message.error()))
                else:
                    logging.info(' Received message on partition {} with offset: {} and timestamp {}'
                                 .format(message.partition(),
                                         message.offset(),
                                         message.timestamp()))
                    message = message.value()
                    logging.debug(message.decode())
                    logging.info(' Attempting to communicate with tfserver... ')
                    try:
                        input = json.loads(message.decode())
                        obj = {}
                        obj['amount'] = input['Amount']
                        obj['consumer_tsp'] = datetime.now()
                        instances = [[input[k] for k in input.keys()]]
                        predictions = self._make_prediction(instances)
                        for pred in predictions:
                            eval = self.predict_evaluator(instances, pred, 0.75)
                            if eval == 1:
                                logging.warn(" Potential anomaly detected: \n{}".format(message.decode()))
                                obj['potential_fraud_yn'] = 'Y'
                            else:
                                obj['potential_fraud_yn'] = 'N'
                                logging.info(' Prediction request fulfilled.')
                        q = "INSERT INTO sad.tbl_card_transactions (amount, potential_fraud_yn, consumer_tsp) VALUES(%(amount)s, %(potential_fraud_yn)s, %(consumer_tsp)s)"
                        try:
                            self.cursor.execute(q, obj)
                            self.db_conn.commit()
                        except Exception as e:
                            print(e)
                    except Exception as e:
                        logging.error(' Unable to communicate with tfserver.')
                        logging.error(e)
            except KeyboardInterrupt:
                logging.warning(' User requested stop.')
                break
            finally:
                sleep(2)
