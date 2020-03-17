--trip count of fifth week by companies
select company, count(unique_key)
from taxi_2018.taxi_2018_fifth_week
group by 1
order by 2 desc;