-- Use the `ref` function to select from other models

select *
from `program-data-fellowship-8`.`nyc_yellow_taxi`.`my_first_dbt_model`
where id = 1