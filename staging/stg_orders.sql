-- stg_orders.sql
SELECT
    order_id,
    customer_id,
    DATE(order_date) AS order_date,
    status,
    CAST(total_amount AS NUMERIC) AS total_amount
FROM {{ source('dbt_demo_raw', 'orders') }}
