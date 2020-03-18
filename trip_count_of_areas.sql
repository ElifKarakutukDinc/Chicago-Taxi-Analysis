--trip count of areas 
select pickup_community_area, pickup_latitude, pickup_longitude, count(unique_key) as area_trip_count
from taxi_2018.main_data 
group by 1,2,3
order by 1;
