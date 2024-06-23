# Write your MySQL query statement below
select round(sum(tiv_2016), 2) as tiv_2016
from insurance
where pid  not in (select pid from insurance group by tiv_2015 having count(tiv_2015) <= 1)
and concat(lat,lon) not in (select concat(lat, lon) as lat_long from insurance group by CONCAT(lat, lon)  having count(CONCAT(lat, lon)) >1)