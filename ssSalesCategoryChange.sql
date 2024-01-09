with 
category_sales as
(
	select
		region
	 	,category
	 	,sum(sales)  			as total_sales
	 	,sum(profit)			as total_profit
	from Superstore
	 group by 2, 1
	 order by category asc
 ),
 sub_sales as 
 (
	 select 
	  	region
	 	,sub_category
	 	,sum(sales) 			as total_sales_sub
	 	,sum(profit)			as total_profit_sub
	from Superstore
	 group by 2, 1
	 order by sub_category asc
 )
select * from category_sales 
union
select * from sub_sales

 /* odseparować oraz dołożyć dla profitów, stworzyć wykres*/

