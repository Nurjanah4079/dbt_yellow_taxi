{{ config(materialized='table') }}

with all_yellow_taxi as (
    SELECT * 
    FROM {{ ref('stg_yellow_taxi') }}
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
    fare_amount,
    extra,
    mta_tax,
    tip_amount
    tolls_amount,
    improvement_surcharge,
    congestion_surcharge,
    total_amount
FROM
    all_yellow_taxi
