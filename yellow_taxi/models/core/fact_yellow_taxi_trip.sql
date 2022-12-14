{{ config(materialized='table') }}

with src_yelloe_taxi as (
    SELECT * 
    FROM {{ ref('yellow_taxi') }}
)

SELECT 
    VendorID,
    tpep_pickup_datetime,
    tpep_dropoff_datetime,
    store_and_fwd_flag,
    RatecodeID,
    PULocationID,
    DOLocationID,
    passenger_count,
    trip_distance,
    payment_type,	
    total_amount
FROM
    src_yellow_taxi