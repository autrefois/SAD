import streamlit as st

# custom modules
import utils.data_loader as data_loader
import utils.charts as chrt


def run() -> None:
    st.title("Real-Time Anomaly Detection Dashboard")
    st.sidebar.markdown("## Data Analysis 📊")
    st.sidebar.markdown("Displays information on the latest transactions (static).")

    df_extra = data_loader.get_extra_data()
    buffer, fig_header = st.columns([0.25, 20])
    with fig_header:
        st.markdown("### 📊 Data Analysis 📊")
        if st.button("🔄", ):
            st.experimental_rerun()
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
