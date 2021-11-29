
create database Organization;
use Organization;
create table Worker 
(WORKER_ID int primary key,
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
SALARY int,
JOINING_DATE datetime,
DEPARTMENT varchar(25)
);
create table Bonus 
(WORKER_REF_ID int,
BONUS_DATE datetime,
BONUS_AMOUNT int,
foreign key(WORKER_REF_ID)
references Worker(WORKER_ID)
on delete cascade
);
CREATE TABLE Title 
(WORKER_REF_ID int,
WORKER_TITLE varchar(25),
AFFECTED_FROM datetime,
foreign key(WORKER_REF_ID)
references Worker(WORKER_ID)
on delete cascade
);

INSERT INTO Worker VALUES(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR');
INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR');
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin');
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account');
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account');
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES(009, 'Harish', 'Shrinivas', 100000, '14-05-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES(010, 'Nitesh', 'Barkuntla', 80000, '14-09-21 09.00.00', 'HR');
INSERT INTO Worker VALUES(011, 'Nikita', 'Barkuntla', 90000, '14-10-11 09.00.00', 'Account');
INSERT INTO Worker VALUES(012, 'Shailesh', 'Poojary', 100000, '14-09-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES(013, 'Deepesh', 'Potlapalli', 95000, '14-02-10 09.00.00', 'HR');
INSERT INTO Worker VALUES(014, 'Roshan', 'Gagare', 80000, '14-09-20 09.00.00', 'Account');
INSERT INTO Worker VALUES(015, 'Pooja', 'Pathak', 90000, '14-08-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES(016, 'Zen', 'Souza', 100000, '14-01-31 09.00.00', 'HR');
INSERT INTO Worker VALUES(017, 'Shivam', 'Rai', 93000, '14-02-01 09.00.00', 'Account');
INSERT INTO Worker VALUES(018, 'Hrithik', 'Malunjkar', 100000, '14-01-21 09.00.00', 'HR');

INSERT INTO Bonus VALUES(001, '16-02-20',2500);
INSERT INTO Bonus VALUES(002, '16-06-11',2000);
INSERT INTO Bonus VALUES(003, '16-02-20',3000);
INSERT INTO Bonus VALUES(001, '16-02-20',2500);
INSERT INTO Bonus VALUES(005, '16-06-11',2000);
INSERT INTO Bonus VALUES(006, '16-07-01',3000);
INSERT INTO Bonus VALUES(010, '16-06-21',2500);
INSERT INTO Bonus VALUES(018, '16-01-30',3000);
INSERT INTO Bonus VALUES(008, '16-02-18',2500);
INSERT INTO Bonus VALUES(014, '16-03-17',2700);
INSERT INTO Bonus VALUES(007, '16-04-25',5000);
INSERT INTO Bonus VALUES(009, '16-05-01',4000);
INSERT INTO Bonus VALUES(008, '16-06-21',3500);
INSERT INTO Bonus VALUES(012, '16-08-21',2700);
INSERT INTO Bonus VALUES(011, '16-07-31',3800);

INSERT INTO Title VALUES(001, 'Manager', '2016-02-20 00:00:00');
INSERT INTO Title VALUES (002, 'Executive', '2016-06-11 00:00:00');
INSERT INTO Title VALUES (008, 'Executive', '2016-06-11 00:00:00');
INSERT INTO Title VALUES (005, 'Manager', '2016-06-11 00:00:00');
INSERT INTO Title VALUES(004, 'Asst. Manager', '2016-06-11 00:00:00');
INSERT INTO Title VALUES (007, 'Executive', '2016-06-11 00:00:00');
INSERT INTO Title VALUES (006, 'Lead', '2016-06-11 00:00:00');
INSERT INTO Title VALUES (009, 'Manager', '2016-05-01 00:00:00');
INSERT INTO Title VALUES (010, 'Executive', '2016-06-21 00:00:00');
INSERT INTO Title VALUES (011, 'Manager', '2016-07-21 00:00:00');
INSERT INTO Title VALUES (012, 'Asst. Manager', '2016-08-21 00:00:00');
INSERT INTO Title VALUES (013, 'Lead', '2016-06-11 00:00:00');
INSERT INTO Title VALUES (014, 'Lead', '2016-03-17 00:00:00');
INSERT INTO Title VALUES (015, 'Asst. Manager', '2016-06-11 00:00:00');
INSERT INTO Title VALUES (016, 'Manager', '2016-07-31 00:00:00');
INSERT INTO Title VALUES (017, 'Lead', '2016-08-10 00:00:00');
INSERT INTO Title VALUES (018, 'Executive', '2016-01-30 00:00:00');


