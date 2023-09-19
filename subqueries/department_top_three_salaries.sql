select d.name Department ,e.name Employee,e.salary Salary 
from Employee e inner join Department d on e.departmentId=d.id where salary in (
select salary from (select distinct salary,dense_rank() over (order by salary desc) rn from Employee where departmentId=e.departmentId) tmp where rn<=3) ;
