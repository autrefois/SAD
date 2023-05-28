CREATE SCHEMA sad;

CREATE TABLE sad.tbl_card_transactions
(
    card_transaction_id SERIAL PRIMARY KEY,
    amount NUMERIC(30,5),
    potential_fraud_yn VARCHAR(3) DEFAULT 'N/A',
    consumer_tsp TIMESTAMP,
    audit_tsp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE USER svc_kafka WITH ENCRYPTED PASSWORD 'kafka';
GRANT ALL PRIVILEGES ON SCHEMA sad TO svc_kafka;
GRANT ALL ON sad.tbl_card_transactions, sad.tbl_card_transactions_card_transaction_id_seq TO svc_kafka;

CREATE USER svc_grafana WITH ENCRYPTED PASSWORD 'grafana';
GRANT ALL PRIVILEGES ON SCHEMA sad TO svc_grafana;
GRANT SELECT ON sad.tbl_card_transactions TO svc_grafana;
