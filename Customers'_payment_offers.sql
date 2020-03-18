--Customers' payment offers

select payment_type, count(unique_key) as payment_offers
from taxi_2018.main_data 
group by 1
order by 2 desc;
