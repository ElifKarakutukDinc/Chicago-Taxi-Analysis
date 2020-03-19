--statistics by weekdays

Select
case 
	when date_part('dow', trip_start_timestamp)= 1 then 'monday' 
	when date_part('dow', trip_start_timestamp)= 2 then 'tuesday'
	when date_part('dow', trip_start_timestamp)= 3 then 'wednesday'
	when date_part('dow', trip_start_timestamp)= 4 then 'thursday'
	when date_part('dow', trip_start_timestamp)= 5 then 'friday'
	when date_part('dow', trip_start_timestamp)= 6 then 'saturday'
	when date_part('dow', trip_start_timestamp)= 0 then 'sunday'
end as weekdays, count(unique_key) as trip_count, Round(sum(trip_total)) as total_amount, round(sum(trip_miles)) as total_trip_miles
from taxi_2018.main_data
group by 1;