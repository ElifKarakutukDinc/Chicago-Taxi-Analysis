--total tip by companies (customers' measure of happiness)

select company, round(sum(tips)) as total_tip
from taxi_2018.main_data 
group by 1
order by 2 desc;
