--trip time by companies 

select company, sum(trip_seconds) as trip_time
from taxi_2018.main_data 
group by 1
order by 2 desc;
