select         -- 'ROW' in uppercase
    DATE AS order_date,
    Months AS month,
    CUSTOMER AS customer_id,
    Style AS product_style,
    SKU AS product_sku,
    Size AS product_size,
    PCS AS quantity,
    RATE AS price,
    `GROSS AMT` AS total_amount
FROM {{ source('dbt_demo_raw', 'orders') }}
