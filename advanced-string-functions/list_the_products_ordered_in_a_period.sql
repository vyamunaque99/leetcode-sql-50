select product_name,sum(unit) unit from Orders o inner join Products p on o.product_id=p.product_id where year(order_date)=2020 and month(order_date)=02 group by 1
having sum(unit)>=100;
