
  create or replace   view "HACKATHON"."TEAM_20"."my_second_dbt_model"
  
   as (
    -- Use the `ref` function to select from other models

select *
from "HACKATHON"."TEAM_20"."my_first_dbt_model"
where id = 1
  );

