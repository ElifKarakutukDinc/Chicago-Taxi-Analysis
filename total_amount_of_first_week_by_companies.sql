--total amount of first week by companies
select company, round(sum(trip_total)) as first_week_total_amount 
from taxi_2018.taxi_2018_first_week
group by 1
order by 2 desc;