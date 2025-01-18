WITH CTE1 AS (SELECT segment,
COUNT(distinct(p.product_code)) AS product_count_2020
FROM dim_product p
JOIN fact_sales_monthly s
ON p.product_code = s.product_code
WHERE s.fiscal_year=2020
GROUP BY segment),


CTE2 AS (SELECT segment,
COUNT(distinct(p.product_code)) AS product_count_2021
FROM dim_product p
JOIN fact_sales_monthly s
ON p.product_code = s.product_code
WHERE s.fiscal_year=2021
GROUP BY segment)

SELECT b.segment, product_count_2021,
Product_count_2020,
product_count_2021-product_count_2020 AS difference 
FROM CTE1 a 
JOIN CTE2 b
ON a.segment=b.segment