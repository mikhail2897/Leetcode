# Write your MySQL query statement below
with cte as (
    select distinct requester_id as id, count(*) as cnt
    from RequestAccepted
    group by requester_id

    union all

    select distinct accepter_id as id, count(*) as cnt
    from RequestAccepted
    group by accepter_id
)
select id, sum(cnt) as num
from cte
group by id
order by num desc
limit 1


