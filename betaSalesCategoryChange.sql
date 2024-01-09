with 
category_sales as
(
select
	category
 	,sum(sales) 		as total_sales_c
 from Superstore
 group by 1
 order by category asc
 ),
 category_profit as 
 (
 select
 	category 
 	,sum(profit) 		as total_profit_c
 from  Superstore s
 group by 1
 ),
 base as 
 (
 	select
 		distinct region
 		,category
 	from Superstore s 
 	order by region asc
 )
 select 
 	b.region
 	,b.category
 	,cs.total_sales_c
 	,cp.total_profit_c
 from base b
 inner join 	category_sales 	cs on 	b.category = cs.category
 inner join 	category_profit cp on 	cs.category = cp.category