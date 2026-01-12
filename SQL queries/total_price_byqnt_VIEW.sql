CREATE VIEW total_price_byqnt AS 
SELECT  quantity,price,quantity*price AS total_price FROM pizzas 
FULL JOIN order_details ON pizzas.pizza_id=order_details.pizza_id;

