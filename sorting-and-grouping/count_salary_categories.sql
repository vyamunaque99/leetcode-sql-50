select tmp1.acc category,coalesce(accounts_count,0) accounts_count from (select 'Low Salary' acc
union
select 'Average Salary' acc
union
select 'High Salary' acc) tmp1 left join (
select count(account_id) accounts_count ,case 
when income<20000 then 'Low Salary' 
when income>=20000 and income<=50000 then 'Average Salary'
when income>50000 then 'High Salary'
else null end acc from Accounts group by 2)tmp2 on tmp1.acc=tmp2.acc;
