# Write your MySQL query statement below
select distinct p1.email as Email
from person p1
join person p2
on p1.email = p2.email
where p1.id != p2.id