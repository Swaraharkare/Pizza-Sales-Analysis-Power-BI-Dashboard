

WITH Category_TotalPrice AS(
        SELECT category,total_price FROM pizza_types
		FULL JOIN 
		(SELECT  p.pizza_type_id,quantity,price,quantity*price AS total_price FROM pizzas AS p 
		FULL JOIN order_details ON p.pizza_id=order_details.pizza_id
		)AS total ON pizza_types.pizza_type_id=total.pizza_type_id)



SELECT category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from Category_TotalPrice) AS DECIMAL(10,2)) AS PCT
FROM Category_TotalPrice
GROUP BY category
