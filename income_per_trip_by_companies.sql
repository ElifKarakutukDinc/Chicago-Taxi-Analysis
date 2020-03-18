--income per trip by companies 

select company, round(sum(trip_total)/count(unique_key)) as income_per_trip
from taxi_2018.main_data 
group by 1
order by 2 desc;
