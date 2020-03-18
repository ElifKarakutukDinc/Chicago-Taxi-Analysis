--total amount of areas 
select pickup_community_area, pickup_latitude, pickup_longitude, sum(trip_total) as area_total_amount
from taxi_2018.main_data 
group by 1,2,3
order by 1;
