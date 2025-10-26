{{ config(materialized='view') }}

SELECT
    "Zip Code"::VARCHAR AS zip_code,
    Population::INTEGER AS population
FROM {{ ref('telecom_zipcode_population') }}
