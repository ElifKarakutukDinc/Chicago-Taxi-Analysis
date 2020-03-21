--weekly trip count of companies
with first_week_trip_count as (

select company, count(unique_key) as first_week_count
from taxi_2018.taxi_2018_first_week  
group by 1),

second_week_trip_count as (

select company, count(unique_key) as second_week_count
from taxi_2018.taxi_2018_second_week  
group by 1),

third_week_trip_count as (

select company, count(unique_key) as third_week_count
from taxi_2018.taxi_2018_third_week  
group by 1),

fourth_week_trip_count as (

select company, count(unique_key) as fourth_week_count
from taxi_2018.taxi_2018_fourth_week  
group by 1),

fifth_week_trip_count as (

select company, count(unique_key) as fifth_week_count
from taxi_2018.taxi_2018_fifth_week  
group by 1)

select four.company, coalesce(first_week_count, 0) , coalesce(second_week_count, 0), coalesce(third_week_count, 0), fourth_week_count, coalesce(fifth_week_count, 0)
from fourth_week_trip_count as four
left join first_week_trip_count as fst on(four.company=fst.company) 
left join second_week_trip_count as snd on (four.company=snd.company) 
left join third_week_trip_count as third on (four.company=third.company)
left join fifth_week_trip_count as fifth on (four.company=fifth.company);
