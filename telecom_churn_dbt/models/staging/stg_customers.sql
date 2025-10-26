{{ config(materialized='view') }}

SELECT
    "Customer ID"::VARCHAR          AS customer_id,
    Gender::VARCHAR                 AS gender,
    Age::INTEGER                    AS age,
    Married::VARCHAR                AS married,
    "Number of Dependents"::INTEGER AS number_of_dependents,
    City::VARCHAR                   AS city,
    "Zip Code"::VARCHAR             AS zip_code,
    "Tenure in Months"::INTEGER     AS tenure_in_months,
    Offer::VARCHAR                  AS offer,
    "Phone Service"::VARCHAR        AS phone_service,
    "Internet Service"::VARCHAR     AS internet_service,
    Contract::VARCHAR               AS contract,
    "Monthly Charge"::DOUBLE        AS monthly_charge,
    "Total Revenue"::DOUBLE         AS total_revenue,
    "Customer Status"::VARCHAR      AS customer_status,
    "Churn Category"::VARCHAR       AS churn_category,
    "Churn Reason"::VARCHAR         AS churn_reason
FROM {{ ref('telecom_customer_churn') }}
