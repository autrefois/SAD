import pandas as pd
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
    df = data_loader.get_latest_data(max_rows=200)

    # dashboard title
    st.title("Real-Time Anomaly Detection Dashboard")
    st.sidebar.markdown("## 🎈 Real-Time Dashboard")
    st.sidebar.markdown("Displays card transaction information in real-time.")

    buffer, fig_filter = st.columns([10, 2])
    with fig_filter:
        data_filter = st.selectbox("Data Filter", pd.unique(df["Flag"]))
    placeholder = st.empty()

    while True:
        df = data_loader.get_latest_data(max_rows=200)
        agg_data = df.groupby(['Flag']).count().reset_index()
        with placeholder.container():
            buffer, fig_transactions = st.columns([0.25, 20])
            with fig_transactions:
                st.markdown("### Credit Card Transactions")
                fig = chrt.simple_chart(df)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_donut, fig_filtered = st.columns([0.25, 5, 5])
            with fig_donut:
                st.markdown("### Anomalous vs Normal")
                fig = chrt.donut_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            with fig_filtered:
                st.markdown("### Filtered Transactions")
                df_flag = df[df["Flag"] == data_filter]
                fig = chrt.line_chart(df_flag)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_percent = st.columns([0.25, 20])
            with fig_percent:
                fig = chrt.perc_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_detailed = st.columns([0.25, 20])
            with fig_detailed:
                st.markdown("### Detailed Data View")
                st.dataframe(df, use_container_width=True, hide_index=True)
        time.sleep(1)


run()
