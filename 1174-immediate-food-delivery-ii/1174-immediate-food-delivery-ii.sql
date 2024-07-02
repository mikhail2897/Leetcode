# Write your MySQL query statement below
with cte as (
    select customer_id, order_date, customer_pref_delivery_date
    from delivery
    where (customer_id, order_date) in (select customer_id, min(order_date) as order_date from delivery group by customer_id)
)
select round(((select count(*) from cte where order_date = customer_pref_delivery_date)/(select count(*) from cte) * 100), 2) as immediate_percentage
from cte
limit 1

