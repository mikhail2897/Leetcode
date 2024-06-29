# Write your MySQL query statement below
with cte as (
    select *, count(distinct product_key) as cntt
    from customer
    group by customer_id
),
cte2 as (
    select count(distinct product_key) cnt
    from product
)
select distinct customer_id
from cte, cte2
where cte.cntt = cte2.cnt