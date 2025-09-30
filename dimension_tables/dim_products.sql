SELECT
    p.product_id,
    p.name,
    p.price,
    p.cost,
    p.size,
    p.color,
    c.category_id,
    c.category_name
FROM {{ ref('stg_products') }} p
LEFT JOIN {{ ref('dim_categories') }} c
    ON p.category_id = c.category_id
