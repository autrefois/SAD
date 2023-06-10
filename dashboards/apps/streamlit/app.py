import pandas as pd
import streamlit as st
import time

# custom modules
import utils.data_loader as data_loader
import utils.charts as chrt


st.set_page_config(
    page_title="Real-Time Detection Dashboard",
    page_icon=":bar_chart:",
    layout="wide",
)


def run() -> None:
    df = data_loader.update_data()

    # dashboard title
    st.title("Real-Time Detection Dashboard")

    buffer, fig_filter = st.columns([10, 2])
    with fig_filter:
        data_filter = st.selectbox("Data Filter", pd.unique(df["flag"]))
    placeholder = st.empty()

    while True:
        df = data_loader.update_data()
        agg_data = df.groupby(['flag']).count().reset_index()
        agg_data = agg_data.loc[:, ['flag', 'Amount']]
        agg_data = agg_data.rename(columns={'Amount': 'qty'})
        with placeholder.container():
            buffer, fig_col1 = st.columns([1, 20])
            with fig_col1:
                st.markdown("### Credit Card Transactions")
                fig = chrt.simple_chart(df)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_col2, fig_col3 = st.columns([1, 5, 5])
            with fig_col2:
                st.markdown("### Anomalous vs Normal")
                fig = chrt.donut_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            with fig_col3:
                st.markdown("### Filtered Transactions")
                df_flag = df[df["flag"] == data_filter]
                fig = chrt.line_chart(df_flag)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_col4 = st.columns([1, 20])
            with fig_col4:
                fig = chrt.perc_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_col5 = st.columns([1, 20])
            with fig_col5:
                st.markdown("### Detailed Data View")
                st.dataframe(df, use_container_width=True)
        time.sleep(1)


run()
