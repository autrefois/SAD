import pandas as pd
from sqlalchemy import create_engine


def get_latest_data(seconds=300, max_rows=1000) -> pd.DataFrame:
    db_conn = create_engine('postgresql://svc_view:view@localhost:5432/postgres')
    df = pd.read_sql_query(sql=f'select card_transaction_id::varchar AS "Transaction Id", \
                                    amount as "Amount", \
                                    CASE potential_fraud \
                                    WHEN 1 THEN \'Anomaly\' \
                                    WHEN 0 THEN \'Normal\' \
                                    END as "Flag", \
                                    consumer_tsp as "Transaction Time" \
                            from sad.tbl_card_transactions \
                           where consumer_tsp >= (now() - INTERVAL \'{seconds} seconds\')::timestamp without time zone  \
                            order by consumer_tsp desc limit {max_rows}', con=db_conn)
    return df
