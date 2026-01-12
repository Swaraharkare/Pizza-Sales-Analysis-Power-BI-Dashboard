
WITH DATE AS( SELECT orders.date,order_details.order_id FROM order_details RIGHT JOIN orders ON order_details.order_id=orders.order_id)


SELECT DATENAME(MONTH,date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM DATE GROUP BY DATENAME(MONTH,date);