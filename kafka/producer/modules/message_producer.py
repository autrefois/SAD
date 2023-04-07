from confluent_kafka import avro
from confluent_kafka.avro import AvroProducer
import json


class AvroMessageProducer:
    producer = None

    def __init__(self, config_file, schema_file) -> None:
        key_schema, value_schema = self.load_schema_from_file(schema_file)
        producer_config = json.load(open(config_file))
        producer_config['on_delivery'] = self.delivery_report
        self.producer = AvroProducer(
            producer_config,
            default_key_schema=key_schema,
            default_value_schema=value_schema
        )

    def load_schema_from_file(self, schema_file):
        key_schema_string = """
        {"type": "string"}
        """
        key_schema = avro.loads(key_schema_string)
        value_schema = avro.load(schema_file)
        return key_schema, value_schema

    def delivery_report(self, err, msg):
        if err is None:
            print('Message delivered to {} [{}]'
                  .format(msg.topic(), msg.partition()))

    def publish_msg(self, topic, key, message):
        print('Publishing message...')
        self.producer.produce(topic=topic, key=key, value=message)
        self.producer.flush()
