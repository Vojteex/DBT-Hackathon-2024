{% test unique(marketing, ID) %}
    select *
    from {{ marketing }}
    where {{ ID }} is unique
{% endtest %}
{% test not_null(marketing, EXPENDITURE_DATE) %}
    select *
    from {{ marketing }}
    where {{ EXPENDITURE_DATE }} is not null
{% endtest %}
{% test not_null(marketing, EXPENDITURES_SUM) %}
    select *
    from {{ marketing }}
    where {{ EXPENDITURES_SUM }} is not null
{% endtest %}