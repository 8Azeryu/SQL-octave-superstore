/* How sales and profit change depending on category & subcategory in different regions?*/
with 
category_sales as
(
select
	category
	,region
 	,sum(sales) 		as total_sales_r
 	,sum(profit) 		as total_profit_r
 from Superstore
 group by 1, 2
  order by region desc
 ),
sub_category_sales as
 (
select
	sub_category
	,region
 	,sum(sales) 		as total_sales_r
 	,sum(profit) 		as total_profit_r
 from Superstore
 group by 1, 2
  order by region desc
 )
 select * from category_sales
 union 
 select * from sub_category_sales
/* all in one .sql, next step one table query.*/j