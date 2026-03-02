 CREATE OR REPLACE TABLE your_project.sql_analysts.clean_orders AS 
  SELECT 
    o.order_id, 
    o.user_id,
    DATE(o.created_at) AS order_date,  
    SUM(oi.sale_price) AS revenue
  FROM bigquery-public-data.thelook_ecommerce.orders o 
  JOIN bigquery-public-data.thelook_ecommerce.order_items oi
  ON o.order_id = oi.order_id 
  WHERE o.status = 'Complete' 
  GROUP BY o.order_id, o.user_id, order_date;
