--total amount of first week by payment types 

select payment_type, round(sum(trip_total)) as total_amount_first_week
from taxi_2018.taxi_2018_first_week
group by 1
order by 2 desc ;
