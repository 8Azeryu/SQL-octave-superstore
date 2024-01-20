with 
profit_rank as
(
select 
	row_id
	,product_name
	,category
	,sub_category
	,round(profit/quantity, 2) as profit_per_product 
from Superstore s
)
select 
	pr.row_id
	,pr.product_name
	,pr.category
	,pr.sub_category
	,profit_per_product 
from profit_rank pr
order by profit_per_product desc
limit 50

/* Similarity of 50 most profitalbe products is the category of their use. It is Office supply, technologial devices. There were large orders involed. 