

  create or replace view `program-data-fellowship-8`.`nyc_yellow_taxi`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `program-data-fellowship-8`.`nyc_yellow_taxi`.`my_first_dbt_model`
where id = 1;

