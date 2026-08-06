SELECT
    o.customer_id,
    SUM(p.payment_value) AS total_spent,
    RANK() OVER (ORDER BY SUM(p.payment_value) DESC) AS customer_rank
FROM `ecommerce-sales-dashboard.ecommerce.orders` o
JOIN `ecommerce-sales-dashboard.ecommerce.payments` p
    ON o.order_id = p.order_id
GROUP BY o.customer_id
ORDER BY customer_rank;
