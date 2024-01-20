select
	category
	,region
 	,sum(sales) 		as total_sales_r
 	,sum(profit) 		as total_profit_r
 from Superstore
 group by 1, 2
  order by region desc