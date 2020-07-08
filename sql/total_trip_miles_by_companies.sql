--total trip miles by companies 

select company, round(sum(trip_miles)) as trip_mile
from taxi_2018.main_data 
group by 1
order by 2 desc;
