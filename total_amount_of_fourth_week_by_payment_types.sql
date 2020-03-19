--total amount of fourth week by payment types 

select payment_type, round(sum(trip_total)) as total_amount_fourth_week
from taxi_2018.taxi_2018_fourth_week
group by 1
order by 2 desc;