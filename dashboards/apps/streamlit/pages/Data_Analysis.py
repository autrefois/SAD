import pandas as pd
import streamlit as st

# custom modules
import utils.data_loader as data_loader
import utils.charts as chrt


st.set_page_config(
    page_title="Real-Time Anomaly Detection Dashboard",
    page_icon=":bar_chart:",
    layout="wide",
)


@st.cache_data
def get_data() -> pd.DataFrame:
    df_extra = data_loader.get_latest_data(seconds=900, max_rows=500)
    return df_extra


def run() -> None:
    st.title("Real-Time Anomaly Detection Dashboard")
    st.sidebar.markdown("## 📊 Data Analysis")
    st.sidebar.markdown("Displays information on the latest transactions (static).")

    df_extra = get_data()
    buffer, fig_header = st.columns([0.25, 20])
    with fig_header:
        st.markdown("### Data Analysis")
        if st.button("🔄", ):
            st.cache_data.clear()
            df_extra = get_data()
    placeholder = st.empty()

    agg_data = df_extra.groupby(['Flag']).count().reset_index()
    with placeholder.container():
        buffer, fig_filtered = st.columns([1, 20])
        with fig_filtered:
            st.markdown("### Latest Transactions")
            fig = chrt.line_chart(df_extra)
            st.altair_chart(fig, use_container_width=True)
        buffer, fig_percent = st.columns([1, 20])
        with fig_percent:
            fig = chrt.perc_chart(agg_data)
            st.altair_chart(fig, use_container_width=True)


run()
