/*SELECT 
city,
count(distinct order_id) as number_orders,
sum(sales) as revenue
from public.orders o 
where category = 'Furniture' 
group by 1
order by revenue desc;*/


select 
city,
count(distinct order_id) as number_orders,
sum(sales) as revenue
from public.orders o 
where category in ('Furniture', 'Technology') --some text there
and extract('year' from order_date) = 2018
group by city
having sum(sales) > 10000
order by revenue desc;

select 
count(*),
count(distinct o.order_id)
from orders o left join refund r on o.order_id = r.order_id

--9994 rows
--inner 3226 rows


select 
count(*),
count(distinct o.order_id)
from orders o
where order_id in (select distinct order_id from "refund")


select date_trunc('day', now()) 








