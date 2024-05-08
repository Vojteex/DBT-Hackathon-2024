
    
    

select
    ID as unique_field,
    count(*) as n_records

from "HACKATHON"."TEAM_20"."MARKETING"
where ID is not null
group by ID
having count(*) > 1


