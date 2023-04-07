from modules.avro_message_consumer import AvroMessageConsumer
import logging


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    topic = 'foobar'
    schema_file = 'avro/user.avsc'
    config_file = 'config/consumer_config.json'

    consumer = AvroMessageConsumer(
        config_file=config_file,
        schema_file=schema_file,
        topic=topic
    )
    consumer.consume_msg()
