--income per trip by taxies  

select taxi_id, round(sum(trip_total)/count(unique_key)) as income_per_trip_by_taxi
from taxi_2018.main_data 
group by 1
order by 2 desc;

