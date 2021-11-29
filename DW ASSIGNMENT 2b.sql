select substring(FIRST_NAME,1,3 ) from worker;

Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';

select rtrim(FIRST_NAME) from worker;

select replace(FIRST_NAME,'a','A') from worker;

select concat(FIRST_NAME,' ',LAST_NAME) as 'COMPLETE_NAME' from worker;

select * from worker order by FIRST_NAME ASC , DEPARTMENT DESC;

select * from worker where FIRST_NAME in ('Vipul','Satish');

select * from worker where FIRST_NAME not in ('Vipul','Satish');

select * from worker where FIRST_NAME like '%a';

select * from worker where FIRST_NAME like '_____h';

select * from worker where SALARY between 100000 and 500000;

select * from worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE)=2;

select FIRST_NAME,SALARY from worker where SALARY between 500000 and 1000000;

SELECT DEPARTMENT, count(WORKER_ID) No_Of_Workers FROM worker GROUP BY DEPARTMENT ORDER BY No_Of_Workers DESC;

select distinct W.FIRST_NAME, T.WORKER_TITLE from Worker W inner join Title T ON W.WORKER_ID = T.WORKER_REF_ID AND T.WORKER_TITLE in ('Manager');

select WORKER_TITLE, AFFECTED_FROM, COUNT(*) from Title GROUP BY WORKER_TITLE, AFFECTED_FROM HAVING COUNT(*) > 1;

select * from worker where mod(WORKER_ID ,2 ) = 0;

select * from worker limit 10;

select * from worker order by SALARY desc limit 5;

Select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary from Worker W, Worker W1 where W.Salary = W1.Salary and W.WORKER_ID != W1.WORKER_ID;
