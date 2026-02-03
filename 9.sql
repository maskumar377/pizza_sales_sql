-- Determine the distribution of orders by hour of the day.
select
hour(order_time) as order_hour,
 count(order_id) as order_count from orders4
group by hour(order_time);