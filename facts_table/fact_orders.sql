WITH order_items AS (
    SELECT
        order_id,
        product_sku,
        quantity,
        price,
        total_amount
    FROM {{ ref('stg_orders') }}
)

SELECT
    order_id,
    MIN(order_date) AS order_date,              -- Fact-level date
    COUNT(DISTINCT product_sku) AS product_count,
    SUM(quantity) AS total_quantity,
    SUM(total_amount) AS total_revenue
FROM order_items
GROUP BY order_id
