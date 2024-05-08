

WITH column_mappings as (
Select column_name || ' as ' || col_name_with_pk_modified as new_col, table_name, ordinal_position
from 
(
select
case when ( right(column_name, 2) = 'ID' ) then lower(table_schema) || '_' || lower(table_name) || '_id'
       else lower(column_name)
        end as col_name_with_pk_modified, 
        column_name,
        table_name,
        ordinal_position

from information_schema.columns
where table_schema = 'DATA_SAMPLE'
order by table_name, ordinal_position
))

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
  'SELECT ' || modified_columns || ' FROM ' || TABLE_NAME || ';' AS sql_statement
FROM
  mapped_columns