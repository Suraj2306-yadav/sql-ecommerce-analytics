#created a cleaned revenue table only completed order and for your analysing the business problem
CREATE OR REPLACE TABLE seventh-palace-451715-i9.ecommerce_analysing.clean_revenue AS 
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
