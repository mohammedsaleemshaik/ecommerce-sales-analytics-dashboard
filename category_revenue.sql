SELECT
    pr.product_category_name,
    SUM(p.payment_value) AS revenue
FROM `ecommerce-sales-dashboard.ecommerce.order_items` oi
JOIN `ecommerce-sales-dashboard.ecommerce.products` pr
    ON oi.product_id = pr.product_id
JOIN `ecommerce-sales-dashboard.ecommerce.payments` p
    ON oi.order_id = p.order_id
GROUP BY pr.product_category_name
ORDER BY revenue DESC
