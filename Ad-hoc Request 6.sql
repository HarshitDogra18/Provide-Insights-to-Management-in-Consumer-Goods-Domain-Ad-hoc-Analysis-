SELECT c.customer,
ROUND(AVG((i.pre_invoice_discount_pct)*100),2) AS avg_discount_percentage
FROM dim_customer c 
JOIN fact_pre_invoice_deductions i 
ON c.customer_code = i.customer_code
WHERE c.market = 'India'
GROUP BY c.customer 
ORDER BY avg_discount_percentage DESC
LIMIT 5