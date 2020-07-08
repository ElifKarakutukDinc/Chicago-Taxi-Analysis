--tip per trip of companies

select company, round(sum(tips) /count(unique_key)) tip_per_trip, round(sum(tips)) total_tip
from taxi_2018.main_data 
group by 1
order by 2 desc