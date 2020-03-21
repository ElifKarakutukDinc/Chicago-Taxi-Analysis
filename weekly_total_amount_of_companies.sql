--weekly total amount of companies
with first_week_total_amount as (

select company, sum(trip_total) as first_week_amount
from taxi_2018.taxi_2018_first_week  
group by 1),

second_week_total_amount  as (

select company, sum(trip_total) as second_week_amount
from taxi_2018.taxi_2018_second_week  
group by 1),

third_week_total_amount  as (

select company, sum(trip_total) as third_week_amount
from taxi_2018.taxi_2018_third_week  
group by 1),

fourth_week_total_amount  as (

select company, sum(trip_total) as fourth_week_amount
from taxi_2018.taxi_2018_fourth_week  
group by 1),

fifth_week_total_amount  as (

select company, sum(trip_total) as fifth_week_amount
from taxi_2018.taxi_2018_fifth_week  
group by 1)

select four.company, coalesce(first_week_amount, 0) as first_week_amount, coalesce(second_week_amount, 0) as second_week_amount, 
coalesce(third_week_amount, 0) as third_week_amount, fourth_week_amount, coalesce(fifth_week_amount, 0) as fifth_week_amount
from fourth_week_total_amount  as four
left join first_week_total_amount  as fst on(four.company=fst.company) 
left join second_week_total_amount  as snd on (four.company=snd.company) 
left join third_week_total_amount as third on (four.company=third.company)
left join fifth_week_total_amount  as fifth on (four.company=fifth.company);
