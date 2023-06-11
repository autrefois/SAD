import altair as alt


def simple_chart(df) -> alt.Chart:
    fig = (
            alt.Chart(df)
            .mark_point()
            .encode(x="Transaction Time",
                    y="Amount",
                    color=alt.Color(shorthand='Flag',
                                    scale=alt.Scale(domain=['Normal', 'Anomaly'], range=['blue', 'red']),
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
                    color=alt.Color(shorthand='Flag',
                                    scale=alt.Scale(domain=['Normal', 'Anomaly'], range=['blue', 'red']),
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
        .encode(theta=alt.Theta(field="Amount", type="quantitative"),
                color=alt.Color(field="Flag", type="nominal",
                                scale=alt.Scale(domain=['Normal', 'Anomaly'], range=['blue', 'red'])),
                )
    )
    return fig


def perc_chart(df) -> alt.Chart:
    fig = (
        alt.Chart(df)
        .transform_joinaggregate(
            total='sum(Amount)')
        .transform_calculate(
            percent=alt.datum.Amount / alt.datum.total)
        .mark_bar()
        .encode(x=alt.X('percent:Q', axis=alt.Axis(format='.0%', title=""), scale=alt.Scale(domain=[0, 1])),
                y=alt.Y('Flag:N', axis=alt.Axis(title="")),
                color=alt.Color(field="Flag",
                                scale=alt.Scale(domain=['Normal', 'Anomaly'], range=['blue', 'red']),
                                legend=None),
                )
    )
    return fig
