SELECT
    pr.product_id,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    SUM(oi.price) AS total_revenue
FROM `ecommerce-sales-dashboard.ecommerce.order_items` oi
JOIN `ecommerce-sales-dashboard.ecommerce.products` pr
    ON oi.product_id = pr.product_id
GROUP BY pr.product_id
ORDER BY total_revenue DESC;
