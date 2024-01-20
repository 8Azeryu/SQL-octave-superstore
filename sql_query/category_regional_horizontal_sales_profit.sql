with 
category_sales as
(
select
	region
 	,category
 	,sum(sales) total_sales
 from Superstore
 group by 2, 1
 order by category asc
 ),
 sub_sales as 
 (
 select 
  	region
 	,sub_category
 	,sum(sales) total_sales_sub
 from Superstore
 group by 2, 1
 order by sub_category asc
 )
 
 select 
  *
 from 
 category_sales 		cs 
 left join sub_sales 	ss  on cs.region = ss.region

 /* odseparować oraz dołożyć dla profitów, stworzyć wykres*/