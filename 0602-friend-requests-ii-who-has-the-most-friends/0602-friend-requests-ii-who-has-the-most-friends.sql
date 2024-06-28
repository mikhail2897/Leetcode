# Write your MySQL query statement below
/* with cte as (
    select distinct requester_id as id, count(*) as cnt
    from RequestAccepted
    group by requester_id

    union

    select distinct accepter_id as id, count(*) as cnt
    from RequestAccepted
    group by accepter_id
),
cte2 as (
    select id, sum(cnt) as num
    from cte
    group by id
    order by num desc
)
select id, num
from cte2
limit 1 
*/
with new as (
(select accepter_id as id, count(*) as num from RequestAccepted
group by 1)
union all
(select requester_id as id, count(*) as num from RequestAccepted
group by 1)
)

select id, sum(num) as num from new
group by id
order by 2 desc limit 1