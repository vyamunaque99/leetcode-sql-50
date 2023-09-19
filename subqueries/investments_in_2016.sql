select round(sum(tiv_2016),2) tiv_2016 from (
select tiv_2016,
case when (select count(1) from Insurance where tiv_2015=i.tiv_2015)>1 then 'Y' else 'N' end 1c,
case when (select count(1) from Insurance where lat=i.lat and lon=i.lon)=1 then 'Y' else 'N' end 2c 
from Insurance i) tmp where 1c='Y' and 2c='Y';
