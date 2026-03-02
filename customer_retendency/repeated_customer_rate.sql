# find the repeated customers rate to help the business performance
create table if not exists seventh-palace-451715-i9.ecommerce_analysing.repeated_customer_rate as (
with user_orders as (
  select 
    user_id,
    count(order_id) as order_counts
    from `seventh-palace-451715-i9.ecommerce_analysing.clean_revenue`
    group by user_id
)
select 
  count(*) as total_customer,
  count(
    case
      when order_counts>1 then 1
    end
  ) as repeated_customers,
  round(count(
    case
      when order_counts>1 then 1
    end
  )*100/count(*)) as RPR
from user_orders
);
