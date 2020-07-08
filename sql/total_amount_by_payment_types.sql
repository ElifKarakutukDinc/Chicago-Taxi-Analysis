--total amount by payment types

select payment_type, round(sum(trip_total)) as total_amount
from taxi_2018.main_data 
group by 1
order by 2 desc ;
