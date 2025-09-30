-- stg_customers.sql
WITH raw AS (
    SELECT
        customer_id,
        first_name,
        last_name,
        email,
        signup_date,
        region
    FROM {{ source('dbt_demo_raw', 'customers') }}
)
SELECT
    customer_id,
    INITCAP(first_name) AS first_name,
    INITCAP(last_name) AS last_name,
    LOWER(email) AS email,
    DATE(signup_date) AS signup_date,
    region
FROM raw
