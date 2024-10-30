SELECT s.*,
    p.* EXCEPT (products_id)
FROM  AS {{ ref('stg_gz_raw_data__raw_gz_sales') }} s
LEFT JOIN {{ ref('stg_gz_raw_data__raw_gz_product') }} AS p
ON s.products_id = p.products_id