from time import sleep
from confluent_kafka import Consumer, KafkaError
from avro.io import DatumReader, BinaryDecoder
import io
import avro.schema
import json


class MessageConsumer:
    consumer = None
    schema = None

    def __init__(self, config_file, schema_file, topic) -> None:
        consumer_config = json.load(open(config_file))
        self.consumer = Consumer(consumer_config)
        self.consumer.subscribe([topic])
        # self.schema = avro_schema.load_schema(schema_path=schema_file)
        self.schema = avro.schema.parse(open(schema_file).read())

    def decode(self, msg_value):
        reader = DatumReader(self.schema)
        message_bytes = io.BytesIO(msg_value)
        message_bytes.seek(5)
        # Confluent adds 5 extra bytes before the typical avro-formatted data
        decoder = BinaryDecoder(message_bytes)
        event = reader.read(decoder)
        return event

    def consume_msg(self):
        while True:
            try:
                print('Waiting for messsage...')
                message = self.consumer.poll()
                if not message.error():
                    message_dict = self.decode(message.value())
                    print(message_dict)
                elif message.error() != KafkaError._PARTITION_EOF:
                    print(message.error())
                    break
            except KeyboardInterrupt:
                print('Requested stop.')
                break
            finally:
                sleep(5)
