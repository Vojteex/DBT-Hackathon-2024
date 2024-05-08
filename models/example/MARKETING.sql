{{ config(materialized='table') }}

SELECT
    UUID_STRING() AS ID,
    expenditure_date,
    expenditures_sum
FROM {{ source('DATA_SAMPLE', 'SAAS_MARKETING_EXPENDITURES') }}