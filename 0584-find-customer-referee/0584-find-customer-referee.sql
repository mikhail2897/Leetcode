# Write your MySQL query statement below
select name
from customer
where IFNULL(referee_id, 0) != 2