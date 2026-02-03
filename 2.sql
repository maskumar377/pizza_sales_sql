-- Analyze the cumulative revenue generated over time.
select order_date,sum(revenue) over (order by order_date) as cum_revenue from
(select orders4.order_date,
sum(order_details.quantity*pizzas.price) as revenue
from order_details join pizzas on
pizzas.pizza_id=order_details.pizza_id 
join orders4 on orders4.order_id=order_details.order_id
group by orders4.order_date) as sales;