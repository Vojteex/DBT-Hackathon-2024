{% macro execute_dynamic_sql() %}

{%- set query = "SELECT sql_statement FROM team_20.L1_views" -%}
{%- set results = run_query(query) -%}

{%- if execute -%}
  {%- for result in results.rows -%}
    {{ log("Executing dynamic SQL: " ~ result[0], info=True) }}
    {%- do run_query(result[0]) -%}
  {%- endfor -%}
{%- endif %}

{% endmacro %}
