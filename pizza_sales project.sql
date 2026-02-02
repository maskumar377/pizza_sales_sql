-- Top 3 most ordered pizza types based on revenue for each category
SELECT 
    category,
    name,
    revenue
FROM (
    SELECT 
        category,
        name,
        revenue,
        RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS rn
    FROM (
        SELECT 
            pt.category,
            pt.name,
            SUM(od.quantity * p.price) AS revenue
        FROM pizza_types pt
        JOIN pizzas p 
            ON pt.pizza_type_id = p.pizza_type_id
        JOIN order_details od 
            ON od.pizza_id = p.pizza_id
        GROUP BY pt.category, pt.name
    ) a
) b
WHERE rn <= 3;
