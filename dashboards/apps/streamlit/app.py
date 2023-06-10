import altair as alt
import time
import numpy as np
import pandas as pd
import plotly.express as px
import streamlit as st

from sqlalchemy import create_engine


st.set_page_config(
    page_title="Real-Time Detection Dashboard",
    page_icon="✅",
    layout="wide",
)


def update_data() -> pd.DataFrame:
    db_conn = create_engine('postgresql://svc_view:view@localhost:5432/postgres')
    df = pd.read_sql_query(sql='select amount as "Amount", \
                                    potential_fraud, \
                                    CASE potential_fraud \
                                    WHEN 1 THEN \'Anomaly\' \
                                    WHEN 0 THEN \'Normal\' \
                                    END as flag, \
                                    consumer_tsp as "Transaction Time" \
                            from sad.tbl_card_transactions order by consumer_tsp desc limit 200', con=db_conn)
    return df


def simple_chart(df) -> alt.Chart:
    fig = (
            alt.Chart(df)
            .mark_point()
            .encode(x="Transaction Time",
                    y="Amount",
                    color=alt.Color(shorthand='potential_fraud',
                                    scale=alt.Scale(domain=[0, 1], range=['blue', 'red']),
                                    legend=None)
                    )
            ).configure_axis(
            grid=True
        )
    return fig


def line_chart(df) -> alt.Chart:
    fig = (
            alt.Chart(df)
            .mark_line()
            .encode(x="Transaction Time",
                    y="Amount",
                    color=alt.Color(shorthand='potential_fraud',
                                    scale=alt.Scale(domain=[0, 1], range=['blue', 'red']),
                                    legend=None)
                    )
            ).configure_axis(
            grid=True
        )
    return fig


def donut_chart(df) -> alt.Chart:
    fig = (
        alt.Chart(df)
        .mark_arc()
        .encode(theta=alt.Theta(field="qty", type="quantitative"),
                color=alt.Color(field="flag", type="nominal",
                                scale=alt.Scale(domain=['Normal', 'Anomaly'], range=['blue', 'red'])),
                )
    )
    return fig


def perc_chart(df) -> alt.Chart:
    fig = (
        alt.Chart(df)
        .transform_joinaggregate(
            total='sum(qty)')
        .transform_calculate(
            percent=alt.datum.qty / alt.datum.total)
        .mark_bar()
        .encode(x=alt.X('percent:Q', axis=alt.Axis(format='.0%', title="")),
                y=alt.Y('flag:N', axis=alt.Axis(title="")),
                color=alt.Color(field="flag",
                                scale=alt.Scale(domain=['Normal', 'Anomaly'], range=['blue', 'red']),
                                legend=None),
                )
    )
    return fig


def run() -> None:
    df = update_data()

    # dashboard title
    st.title("Real-Time Detection Dashboard")

    buffer, fig_filter = st.columns([10, 2])
    with fig_filter:
        data_filter = st.selectbox("Data Filter", pd.unique(df["flag"]))
    placeholder = st.empty()

    while True:
        df = update_data()
        agg_data = df.groupby(['flag']).count().reset_index()
        agg_data = agg_data.loc[:, ['flag', 'Amount']]
        agg_data = agg_data.rename(columns={'Amount': 'qty'})
        with placeholder.container():
            buffer, fig_col1 = st.columns([1, 20])
            with fig_col1:
                st.markdown("### Credit Card Transactions")
                fig = simple_chart(df)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_col2, fig_col3 = st.columns([1, 5, 5])
            with fig_col2:
                st.markdown("### Anomalous vs Normal")
                fig = donut_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            with fig_col3:
                st.markdown("### Filtered Transactions")
                df_flag = df[df["flag"] == data_filter]
                fig = line_chart(df_flag)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_col4 = st.columns([1, 20])
            with fig_col4:
                fig = perc_chart(agg_data)
                st.altair_chart(fig, use_container_width=True)
            buffer, fig_col5 = st.columns([1, 20])
            with fig_col5:
                st.markdown("### Detailed Data View")
                st.dataframe(df, use_container_width=True)
        time.sleep(1)


run()
