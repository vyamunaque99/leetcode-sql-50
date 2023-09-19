select distinct visited_on,amount,round(amount/7,2) average_amount  from(select visited_on,
(select sum(amount)  from Customer where visited_on between date_sub(c.visited_on,interval 6 day) and c.visited_on) amount from Customer c where date_sub(c.visited_on,interval 6 day)>=(select min(visited_on) from Customer)) tmp;
