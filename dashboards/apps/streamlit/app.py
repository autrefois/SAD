import pandas as pd
from random import random
import streamlit as st
import time

# custom modules
import utils.data_loader as data_loader
import utils.charts as chrt


st.set_page_config(
    page_title="Real-Time Anomaly Detection Dashboard",
    page_icon=":bar_chart:",
    layout="wide",
)


def run() -> None:
    df = data_loader.update_data()

    # dashboard title
    st.title("Real-Time Anomaly Detection Dashboard")

    buffer, fig_filter = st.columns([10, 2])
    with fig_filter:
        data_filter = st.selectbox("Data Filter", pd.unique(df["Flag"]))
    placeholder = st.empty()

    while True:
        df = data_loader.update_data()
        agg_data = df.groupby(['Flag']).count().reset_index()
        with placeholder.container():
            buffer, fig_transactions = st.columns([1, 20])
            with fig_transactions:
                st.markdown("### Credit Card Transactions")
                fig = chrt.simple_chart(df)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_donut, fig_filtered = st.columns([1, 5, 5])
            with fig_donut:
                st.markdown("### Anomalous vs Normal")
                fig = chrt.donut_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            with fig_filtered:
                st.markdown("### Filtered Transactions")
                df_flag = df[df["Flag"] == data_filter]
                fig = chrt.line_chart(df_flag)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_percent = st.columns([1, 20])
            with fig_percent:
                fig = chrt.perc_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_detailed = st.columns([1, 20])
            with fig_detailed:
                st.markdown("### Detailed Data View")
                st.dataframe(df, use_container_width=True, hide_index=True)
            buffer, download_csv, download_json, download_parquet = st.columns([10, 3, 3, 3])
            with download_csv:
                st.download_button(
                    label="Download data as CSV",
                    data=df.to_csv(index=False).encode('utf-8'),
                    file_name="card_transactions.csv",
                    mime="text/csv",
                    key=random()
                    )
            with download_json:
                st.download_button(
                    label="Download data as JSON",
                    data=df.to_json(orient='records'),
                    file_name='card_transactions.json',
                    mime='application/json',
                    key=random()
                )
            with download_parquet:
                st.download_button(
                    label="Download data as Parquet",
                    data=df.to_parquet(engine='pyarrow', compression='snappy'),
                    file_name="card_transactions.parquet",
                    key=random()
                    )
        time.sleep(1)


run()
