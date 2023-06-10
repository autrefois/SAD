import altair as alt


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
