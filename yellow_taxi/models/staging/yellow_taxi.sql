{{ config(materialized='view')}}

with yellow_data_all as (
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-0001') }}
    UNION ALL 
    SELECT *FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-02') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-03') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-04') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-05') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_20199', 'yellow_taxi_2019-06') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019p', 'yellow_taxi_2019-07') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-08') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-09') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-10') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-11') }}
    UNION ALL 
    SELECT * FROM {{ source('yellow_taxi_2019', 'yellow_taxi_2019-12') }}
)

SELECT * FROM yellow_data_all