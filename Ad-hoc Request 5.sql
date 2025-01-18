SELECT p.product_code,p.product,
m.manufacturing_cost AS manufacturing_cost
FROM dim_product p 
JOIN fact_manufacturing_cost m 
ON p.product_code = m.product_code
WHERE manufacturing_cost
IN (
	SELECT MAX(manufacturing_cost) FROM fact_manufacturing_cost 
    UNION
    SELECT MIN(manufacturing_cost) FROM fact_manufacturing_cost 
    ) 

