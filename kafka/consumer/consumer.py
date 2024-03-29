import logging

# custom modules
from modules.avro_message_consumer import AvroMessageConsumer
from processors.card_transaction_event import encode, predict_eval, save_to_db


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    topic = 'credit.card.transactions'
    schema_file = 'avro/card_transaction.avsc'
    config_file = 'config/consumer_config.json'
    predict_model = 'fraud_detector'

    consumer = AvroMessageConsumer(
        config_file=config_file,
        schema_file=schema_file,
        topic=topic,
        predict_model=predict_model,
        persistence=save_to_db,
        predict_evaluator=predict_eval,
        custom_encoder=encode
    )
    consumer.consume_msg()
