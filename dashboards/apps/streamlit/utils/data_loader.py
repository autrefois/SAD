import pandas as pd
from sqlalchemy import create_engine


def update_data() -> pd.DataFrame:
    db_conn = create_engine('postgresql://svc_view:view@localhost:5432/postgres')
    df = pd.read_sql_query(sql='select card_transaction_id::varchar AS "Transaction Id", \
                                    amount as "Amount", \
                                    CASE potential_fraud \
                                    WHEN 1 THEN \'Anomaly\' \
                                    WHEN 0 THEN \'Normal\' \
                                    END as "Flag", \
                                    consumer_tsp as "Transaction Time" \
                            from sad.tbl_card_transactions \
                           where consumer_tsp >= (now() - INTERVAL \'5 min\')::timestamp without time zone \
                            order by consumer_tsp desc limit 200', con=db_conn)
    return df
