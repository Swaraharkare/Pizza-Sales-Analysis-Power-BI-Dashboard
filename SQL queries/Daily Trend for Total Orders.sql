
WITH DATE AS( SELECT orders.date,order_details.order_id FROM order_details RIGHT JOIN orders ON order_details.order_id=orders.order_id)


SELECT DATENAME(DW,date) AS order_day, 
COUNT(DISTINCT order_id) AS total_orders 
FROM DATE
GROUP BY DATENAME(DW,date);


