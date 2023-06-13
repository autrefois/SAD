import pandas as pd
import streamlit as st
from streamlit_extras.dataframe_explorer import dataframe_explorer

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
    st.sidebar.markdown("Displays information on the latest transactions (static) or uploaded .csv files.")

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

        buffer, uploader = st.columns([0.25, 10])
        with uploader:
            st.markdown("### Transaction Analysis")
            uploaded_files = st.file_uploader("Upload .csv files", type={"csv"}, accept_multiple_files=True)

            if uploaded_files:
                for file in uploaded_files:
                    file.seek(0)
                uploaded_data_read = [pd.read_csv(file) for file in uploaded_files]
                upd_file_df = pd.concat(uploaded_data_read)
                agg_data = upd_file_df.groupby(['Flag']).count().reset_index()
                fig_simple = chrt.simple_chart(upd_file_df)
                st.altair_chart(fig_simple, use_container_width=True)
                fig_perc = chrt.perc_chart(agg_data)
                st.altair_chart(fig_perc, use_container_width=True)
                filtered_df = dataframe_explorer(upd_file_df, case=False)
                st.dataframe(filtered_df, use_container_width=True, hide_index=True)


run()
