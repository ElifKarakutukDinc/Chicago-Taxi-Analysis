--total amount of fifth week by companies
select company, round(sum(trip_total)) as fifth_week_total_amount 
from taxi_2018.taxi_2018_fifth_week
group by 1
order by 2 desc;