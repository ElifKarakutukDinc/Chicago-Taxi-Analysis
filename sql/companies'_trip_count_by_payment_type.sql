--companies' trip count by payment type

select company, payment_type, count(unique_key) as trip_count
from taxi_2018.main_data 
group by 1,2
order by 1 ;
