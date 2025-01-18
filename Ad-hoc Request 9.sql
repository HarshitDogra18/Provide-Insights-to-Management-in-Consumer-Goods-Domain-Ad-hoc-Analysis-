WITH CTE1 AS (SELECT c.channel,
ROUND(SUM((s.sold_quantity*g.gross_price)/1000000),2) AS gross_sales_mln
FROM dim_customer c 
JOIN fact_sales_monthly s 
ON c.customer_code=s.customer_code
JOIN fact_gross_price g 
ON s.product_code=g.product_code
AND s.fiscal_year = g.fiscal_year 
GROUP BY c.channel)

SELECT *,
gross_sales_mln*100/SUM(gross_sales_mln) over() AS percentage 
FROM CTE1
ORDER BY gross_sales_mln DESC

