SELECT
    c.customer_state,
    ROUND(SUM(p.payment_value), 2) AS total_revenue
FROM `ecommerce-sales-dashboard.ecommerce.customers` c
JOIN `ecommerce-sales-dashboard.ecommerce.orders` o
    ON c.customer_id = o.customer_id
JOIN `ecommerce-sales-dashboard.ecommerce.payments` p
    ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC
