import pandas as pd
import streamlit as st
from streamlit_extras.dataframe_explorer import dataframe_explorer

# custom modules
import utils.data_loader as data_loader


st.set_page_config(
    page_title="Real-Time Anomaly Detection Dashboard",
    page_icon=":bar_chart:",
    layout="wide",
)


@st.cache_data
def get_data(number) -> pd.DataFrame:
    df_extra = data_loader.get_latest_data(seconds=number)
    return df_extra


def run() -> None:
    st.title("Real-Time Anomaly Detection Dashboard")
    st.sidebar.markdown("## 🔍 Data Explorer")

    buffer, fig_data = st.columns([0.25, 20])

    with fig_data:
        st.markdown("### Detailed Data View")
        st.sidebar.markdown("Displays the latest transactions (static).")
        number = st.number_input(label='How many seconds to look back?',
                                 max_value=500,
                                 value=10,
                                 step=1,
                                 help='Choose how far back to look in the database, in seconds. Max 500 seconds.'
                                 )
        df_extra = get_data(number)
        filtered_df_extra = dataframe_explorer(df_extra, case=False)
        st.dataframe(filtered_df_extra, use_container_width=True, hide_index=True)

    buffer, download_csv, download_json, download_parquet = st.columns([10, 3, 3, 3])
    with download_csv:
        st.download_button(
            label="Download .csv",
            data=filtered_df_extra.to_csv(index=False).encode('utf-8'),
            file_name="card_transactions.csv",
            mime="text/csv",
            key='download-csv'
            )
    with download_json:
        st.download_button(
            label="Download .json",
            data=filtered_df_extra.to_json(orient='records'),
            file_name='card_transactions.json',
            mime='application/json',
            key='download-json'
        )
    with download_parquet:
        st.download_button(
            label="Download .parquet",
            data=filtered_df_extra.to_parquet(engine='pyarrow', compression='snappy'),
            file_name="card_transactions.parquet",
            key='download-parquet'
        )


run()
