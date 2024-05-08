
  
    

        create or replace transient table "HACKATHON"."TEAM_20"."MARKETING"
         as
        (

SELECT
    UUID_STRING() AS ID,
    expenditure_date,
    expenditures_sum
FROM HACKATHON.DATA_SAMPLE.SAAS_MARKETING_EXPENDITURES
        );
      
  