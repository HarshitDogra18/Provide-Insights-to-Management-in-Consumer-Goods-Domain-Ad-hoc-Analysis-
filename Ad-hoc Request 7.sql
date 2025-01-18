SELECT s.date AS month , s.fiscal_year,
ROUND(SUM(g.gross_price),2) AS gross_sales_amount
FROM fact_sales_monthly s 
JOIN fact_gross_price g 
ON s.product_code = g.product_code 
AND s.fiscal_year=g.fiscal_year 
JOIN dim_customer c 
ON s.customer_code=c.customer_code
WHERE customer = 'Atliq Exclusive'
GROUP BY s.date,s.fiscal_year 
ORDER BY s.date ASC