--total amount of fourth week by companies
select company, round(sum(trip_total)) as fourth_week_total_amount 
from taxi_2018.taxi_2018_fourth_week
group by 1
order by 2 desc;