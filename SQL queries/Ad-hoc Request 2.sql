WITH CTE1 AS (SELECT COUNT(distinct(p.product)) AS Unique_products_2020
FROM dim_product p 
JOIN fact_sales_monthly s 
ON p.product_code = s.product_code
WHERE s.fiscal_year=2020),

CTE2 AS (SELECT COUNT(distinct(p.product)) AS Unique_products_2021
FROM dim_product p 
JOIN fact_sales_monthly s 
ON p.product_code = s.product_code
WHERE s.fiscal_year=2021)

SELECT Unique_products_2020,
Unique_products_2021,
ROUND((Unique_products_2021-Unique_products_2020)*100/Unique_products_2020,2) AS percentage_chg
FROM CTE1 a 
JOIN CTE2 b 





