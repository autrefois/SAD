from confluent_kafka import KafkaError, DeserializingConsumer
from confluent_kafka.schema_registry import SchemaRegistryClient
from confluent_kafka.schema_registry.avro import AvroDeserializer
from confluent_kafka.serialization import StringDeserializer
import json
import logging
from time import sleep

# custom modules
from parsers.user_event import dict_to_user_event


class AvroMessageConsumer:
    consumer = None

    def __init__(self, config_file, schema_file, topic) -> None:
        logging.info(' Initializing consumer...')
        consumer_config = json.load(open(config_file))
        with open(schema_file) as f:
            schema_str = f.read()
        self.consumer = self.init_consumer(consumer_config, schema_str)
        self.consumer.subscribe([topic])
        logging.info(' Consumer subscribed to topic {}.'.format(topic))

    def init_consumer(self, consumer_config, schema_str):
        'config/schema_registry_config.json'
        schema_registry_config = json.load(open('config/schema_registry_config.json'))
        schema_registry_client = SchemaRegistryClient(schema_registry_config)
        avro_deserializer = AvroDeserializer(
            schema_registry_client=schema_registry_client,
            schema_str=schema_str,
            from_dict=dict_to_user_event
        )
        string_deserializer = StringDeserializer('utf_8')
        consumer_config.update({
                "key.deserializer": string_deserializer,
                "value.deserializer": avro_deserializer
            }
        )
        consumer = DeserializingConsumer(consumer_config)
        return consumer

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
                            .format(
                                    message.topic(),
                                    message.partition(),
                                    message.offset()
                              ))
                    else:
                        logging.error(
                            ' Consumer error: {}'.format(message.error()))
                else:
                    logging.info(' Received message on partition {} with offset: {} and timestamp {}'
                                 .format(
                                        message.partition(),
                                        message.offset(),
                                        message.timestamp()
                                        ))
                    message = message.value()
                    logging.debug(message.decode())
                    print(message.decode())
            except KeyboardInterrupt:
                logging.warning(' User requested stop.')
                break
            finally:
                sleep(2)
