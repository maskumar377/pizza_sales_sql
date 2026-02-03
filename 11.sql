-- Group the orders by date and calculate the average number of pizzas ordered per day.
select avg(order_quantity) as avg_pizza_orderd from 
(select orders4.order_date,sum(order_details.quantity) as order_quantity
from orders4 join order_details on
orders4.order_id=order_details.order_id
group by orders4.order_date) as order_quantity; 
use pizza_sales;
SELECT AVG(order_quantity) AS avg_pizza_ordered
FROM (
    SELECT 
        orders4.order_date,
        SUM(order_details.quantity) AS order_quantity
    FROM orders4
    JOIN order_details 
        ON orders4.order_id = order_details.order_id
    GROUP BY orders4.order_date
) AS daily_orders;

