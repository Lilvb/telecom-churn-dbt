{{ config(materialized='table') }}

SELECT
    c.customer_id,
    c.gender,
    c.age,
    c.married,
    c.number_of_dependents,
    c.city,
    c.zip_code,
    z.population               AS zip_population,
    c.tenure_in_months,
    c.offer,
    c.phone_service,
    c.internet_service,
    c.contract,
    c.monthly_charge,
    c.total_revenue,
    c.customer_status,
    c.churn_category,
    c.churn_reason,
    CASE WHEN c.customer_status = 'Churned' THEN 1 ELSE 0 END AS is_churned
FROM {{ ref('stg_customers') }} c
LEFT JOIN {{ ref('stg_zipcode_population') }} z
    ON c.zip_code = z.zip_code
