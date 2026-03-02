#createed a table to analysing the yearly revenue and growth of revenue yearly.
  
create table if not exists seventh-palace-451715-i9.ecommerce_analysing.yearly_revenue_growth as 
(
  with yearly_revenues as 
  (
   select 
	   year,
	   sum(total_revenue) as yearly_revenue
  from `seventh-palace-451715-i9.ecommerce_analysing.monthly_revenue_growth`
  group by year)
  
  select 
     year,
     yearly_revenue,
     round(safe_divide(
     yearly_revenue -lag(yearly_revenue) over(order by year),
    lag(yearly_revenue) over(order by year))*100,2) as yearly_growth_percentage
  from yearly_revenues
  );
