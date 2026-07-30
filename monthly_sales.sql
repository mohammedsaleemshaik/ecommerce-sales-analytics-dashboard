SELECT
  DATE_TRUNC(DATE(o.order_purchase_timestamp), MONTH) AS month,
  SUM(p.payment_value) AS revenue
FROM `ecommerce-sales-dashboard.ecommerce.orders` o
JOIN `ecommerce-sales-dashboard.ecommerce.payments` p
  ON o.order_id = p.order_id
GROUP BY month
ORDER BY month
