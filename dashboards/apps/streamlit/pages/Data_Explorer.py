from random import random
import streamlit as st
from streamlit_extras.dataframe_explorer import dataframe_explorer

# custom modules
import utils.data_loader as data_loader


def run() -> None:
    st.title("Real-Time Anomaly Detection Dashboard")
    st.sidebar.markdown("## Data Explorer ❄️")

    df_extra = data_loader.get_extra_data()
    buffer, fig_data = st.columns([0.25, 20])

    with fig_data:
        st.markdown("### ❄️ Detailed Data View ❄️")
        st.sidebar.markdown("Displays the latest transactions (static).")
        if st.button("🔄", ):
            st.experimental_rerun()
        filtered_df_extra = dataframe_explorer(df_extra, case=False)
        st.dataframe(filtered_df_extra, use_container_width=True, hide_index=True)

    buffer, download_csv, download_json, download_parquet = st.columns([10, 3, 3, 3])
    with download_csv:
        st.download_button(
            label="Download data as CSV",
            data=df_extra.to_csv(index=False).encode('utf-8'),
            file_name="card_transactions.csv",
            mime="text/csv",
            key=random()
            )
    with download_json:
        st.download_button(
            label="Download data as JSON",
            data=df_extra.to_json(orient='records'),
            file_name='card_transactions.json',
            mime='application/json',
            key=random()
        )
    with download_parquet:
        st.download_button(
            label="Download data as Parquet",
            data=df_extra.to_parquet(engine='pyarrow', compression='snappy'),
            file_name="card_transactions.parquet",
            key=random()
        )


run()
