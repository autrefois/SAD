CREATE SCHEMA sad;

CREATE TABLE sad.tbl_card_transactions
(
    card_transaction_id SERIAL PRIMARY KEY,
    amount NUMERIC(30,5),
    potential_fraud SMALLINT DEFAULT -1,
    consumer_tsp TIMESTAMP,
    audit_tsp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE USER svc_kafka WITH ENCRYPTED PASSWORD 'kafka';
GRANT ALL PRIVILEGES ON SCHEMA sad TO svc_kafka;
GRANT ALL ON sad.tbl_card_transactions, sad.tbl_card_transactions_card_transaction_id_seq TO svc_kafka;

CREATE USER svc_view WITH ENCRYPTED PASSWORD 'view';
GRANT ALL PRIVILEGES ON SCHEMA sad TO svc_view;
GRANT SELECT ON sad.tbl_card_transactions TO svc_view;
