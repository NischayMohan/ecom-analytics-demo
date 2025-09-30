-- stg_categories.sql
SELECT
    category_id,
    category_name
FROM {{ source('dbt_demo_raw', 'categories') }}
