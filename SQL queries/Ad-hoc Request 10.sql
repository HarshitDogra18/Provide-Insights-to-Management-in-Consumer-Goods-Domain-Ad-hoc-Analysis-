WITH CTE1 AS (SELECT p.division, p.product_code, p.product,
 SUM(s.sold_quantity) AS Total_sold_quantity
FROM dim_product p 
JOIN fact_sales_monthly s
ON p.product_code = s.product_code
WHERE s.fiscal_year=2021
GROUP BY p.division,p.product_code,P.product),

CTE2 AS (SELECT *,
DENSE_RANK() OVER(partition by division order by Total_sold_quantity DESC ) AS Rank_order
FROM CTE1 )


SELECT *
FROM CTE2
WHERE Rank_order<=3