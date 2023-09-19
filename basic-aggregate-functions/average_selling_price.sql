select p.product_id,round(sum(price*units)/sum(units),2) average_price
from Prices p inner join UnitsSold u on u.purchase_date between p.start_date and p.end_date 
and p.product_id=u.product_id group by 1 order by 1;
