--total amount of third week by payment types 

select payment_type, round(sum(trip_total)) as total_amount_third_week
from taxi_2018.taxi_2018_third_week
group by 1
order by 2 desc;