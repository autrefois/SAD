import json
import logging
from time import sleep

# custom modules
from modules.message_producer import AvroMessageProducer


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    topic = 'transactions'
    schema_file = 'avro/card_transaction.avsc'
    config_file = 'config/producer_config.json'
    sample_file = 'samples/card_transactions.json'

    with open(sample_file) as f:
        data = json.load(f)

    producer = AvroMessageProducer(
        config_file=config_file,
        schema_file=schema_file
    )

    while True:
        for message in data:
            producer.publish_msg(topic=topic, key="test", message=message)
        sleep(5)
