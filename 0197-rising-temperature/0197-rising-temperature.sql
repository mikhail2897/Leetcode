# Write your MySQL query statement below
with cte as(
    select *, lag(temperature, 1) over(order by recordDate) as lg, lag(recordDate, 1) over(order by recordDate) as lgd
    from weather
)
select id
from cte
where temperature > lg and datediff(recordDate, lgd) = 1 