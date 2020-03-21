--weekly total amount by payment type
with first_week_total_amount as (

select payment_type, sum(trip_total) as first_week_amount
from taxi_2018.taxi_2018_first_week  
group by 1),

second_week_total_amount  as (

select payment_type, sum(trip_total) as second_week_amount
from taxi_2018.taxi_2018_second_week  
group by 1),

third_week_total_amount  as (

select payment_type, sum(trip_total) as third_week_amount
from taxi_2018.taxi_2018_third_week  
group by 1),

fourth_week_total_amount  as (

select payment_type, sum(trip_total) as fourth_week_amount
from taxi_2018.taxi_2018_fourth_week  
group by 1),

fifth_week_total_amount  as (

select payment_type, sum(trip_total) as fifth_week_amount
from taxi_2018.taxi_2018_fifth_week  
group by 1)

select four.payment_type, round(coalesce(first_week_amount, 0)) as first_week_amount, round(coalesce(second_week_amount, 0)) second_week_amount, 
round(coalesce(third_week_amount, 0))as third_week_amount, round(fourth_week_amount), round(coalesce(fifth_week_amount, 0)) as fifth_week_amount
from fourth_week_total_amount  as four
left join first_week_total_amount  as fst on(four.payment_type=fst.payment_type) 
left join second_week_total_amount  as snd on (four.payment_type=snd.payment_type) 
left join third_week_total_amount as third on (four.payment_type=third.payment_type)
left join fifth_week_total_amount  as fifth on (four.payment_type=fifth.payment_type);


