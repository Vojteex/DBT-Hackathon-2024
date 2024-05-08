--

WITH column_mappings as (
Select 
case when data_type like 'TIMESTAMP%' then column_name || '::' || 'TIMESTAMP_TZ' || ' as ' || col_name_with_pk_modified
else column_name || '::' || data_type || ' as ' || col_name_with_pk_modified end as new_col
, table_name, ordinal_position, data_type
from 
(
select
case when ( right(column_name, 2) = 'ID' AND ordinal_position = 1 ) then lower(table_schema) || '_' || lower(table_name) || '_id'
       else lower(column_name)
        end as col_name_with_pk_modified, 
        column_name,
        table_name,
        data_type,
        ordinal_position

from information_schema.columns
where table_schema = 'TEAM_20'
order by table_name, ordinal_position
)
)

,mapped_columns AS (
  SELECT
    TABLE_NAME,
    LISTAGG(NEW_COL, ', ') WITHIN GROUP (ORDER BY ORDINAL_POSITION, NEW_COL) AS modified_columns
  FROM
    column_mappings
  GROUP BY
    TABLE_NAME
)

SELECT
  'CREATE OR REPLACE TABLE ' || 'L1_' || TABLE_NAME || ' AS SELECT ' || modified_columns || ' FROM ' || TABLE_NAME || ';' AS sql_statement
FROM
  mapped_columns