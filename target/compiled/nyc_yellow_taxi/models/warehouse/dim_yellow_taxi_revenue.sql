

with rev_yellow_taxi as (
    SELECT * 
    FROM `program-data-fellowship-8`.`nyc_yellow_taxi`.`stg_yellow_taxi`
)

SELECT 
    VendorID,
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
    rev_yellow_taxi
ORDER BY 
    total_amount DESC