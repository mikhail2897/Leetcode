# Write your MySQL query statement below
with cte as (
    select product_id, min(year) as first_year, quantity, price
    from sales
    group by product_id
)
select s.product_id, cte.first_year, s.quantity, s.price
from sales s
join cte on s.product_id = cte.product_id and s.year = cte.first_year
