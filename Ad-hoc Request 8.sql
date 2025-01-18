WITH CTE1 AS (SELECT 
  CASE 
        WHEN MONTH(s.date) IN (9, 10, 11) THEN 'Q1'
        WHEN MONTH(s.date) IN (12, 1, 2) THEN 'Q2'
        WHEN MONTH(s.date) IN (3, 4, 5) THEN 'Q3'
        WHEN MONTH(s.date) IN (6, 7, 8) THEN 'Q4'
    END AS Qtr ,
    s.sold_quantity 
    FROM fact_sales_monthly s 
    WHERE s.fiscal_year = 2020)
    
    SELECT Qtr,
    SUM(sold_quantity) AS Total_sold_quantity
    FROM CTE1 
    GROUP BY Qtr
    ORDER BY Qtr ASC