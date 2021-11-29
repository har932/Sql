use Sales;

# Creating Table Customers

CREATE TABLE CUSTOMERS(CUSTOMER_ID bigint PRIMARY KEY,
					   FIRST_NAME VARCHAR(max),
                       LAST_NAME VARCHAR(max),
                       PHONE  bigint,
                       EMAIL VARCHAR(max),
                       STREET varchar(max),
                       CITY varchar(max),
                       STATE varchar(max),
                       ZIP_CODE bigint);

# Creating Table Stores

CREATE TABLE STORES(STORE_ID bigint PRIMARY KEY,
					STORE_NAME VARCHAR(max),
                    PHONE  bigint,
                    EMAIL VARCHAR(max),
                    STREET varchar(max),
                    CITY varchar(max),
                    STATE varchar(max),ZIP_CODE bigint);

#Creating Table staff

CREATE TABLE STAFFS(STAFF_ID bigint PRIMARY KEY,
					FIRST_NAME VARCHAR(max),
                    LAST_NAME VARCHAR(max),
                    PHONE  bigint,
                    EMAIL VARCHAR(max),
                    STORE_ID bigint,ACTIVES bigint,
                    MANAGER_ID bigint,
                    FOREIGN KEY(STORE_ID)REFERENCES SALES.STORES(STORE_ID),
                    FOREIGN KEY(MANAGER_ID) REFERENCES SALES.STORES(STORE_ID));

# Creating Table ORDER
CREATE TABLE ORDERS(ORDER_ID bigint PRIMARY KEY,
					CUSTOMER_ID bigint,
                    ORDER_STATUS varchar NOT NULL,
                    ORDER_DATE DATE NOT NULL,
                    REQUIRED_DATE DATE NOT NULL,
                    SHIPPED_DATE DATE NOT NULL,
                    STORE_ID bigint NOT NULL,
                    STAFF_ID bigint NOT NULL,
                    FOREIGN KEY(CUSTOMER_ID) REFERENCES SALES.CUSTOMERS(CUSTOMER_ID),
                    FOREIGN KEY(STORE_ID) REFERENCES SALES.STORES(STORE_ID),
                    FOREIGN KEY(STAFF_ID) REFERENCES SALES.STAFFS(STAFF_ID)
                    );
                    
# Creating Table Order_items

CREATE TABLE ORDER_ITEMS(ORDER_ID bigint,
						 ITEM_ID bigint,
                         PRODUCT_ID bigint,
                         QUANTITY bigint NOT NULL,
                         LIST_PRICE DECIMAL NOT NULL,
                         DISCOUNT bigint ,
                         FOREIGN KEY (ORDER_ID) REFERENCES SALES.ORDERS(ORDER_ID));

# Creating schema Production

CREATE DATABASE PRODUCTION;

USE PRODUCTION;

# Creating Table Categories

CREATE TABLE CATEGORIES(CATEGORY_ID bigint PRIMARY KEY,
						CATEGORY_NAME VARCHAR(max));
 

# Create Table Brands

CREATE TABLE BRANDS(BRAND_ID bigint PRIMARY KEY,
					BRAND_NAME VARCHAR(max));
# Creating Table products

CREATE TABLE PRODUCTS(PRODUCT_ID bigint PRIMARY KEY,
					  PRODUCT_NAME VARCHAR(max),
                      BRAND_ID bigint,
                      CATEGORY_ID bigint,
                      MODEL_YEAR bigint,
                      LIST_TIME DECIMAL,
                      FOREIGN KEY(CATEGORY_ID) REFERENCES PRODUCTION.CATEGORIES(CATEGORY_ID),
                      FOREIGN KEY(BRAND_ID) REFERENCES PRODUCTION.BRANDS(BRAND_ID));
                      
CREATE TABLE STOCKS(STORE_ID bigint PRIMARY KEY,
					PRODUCT_ID bigint,
                    QUANTITY bigint,
                    FOREIGN KEY (STORE_ID) REFERENCES SALES.STORES(STORE_ID),
                    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTION.PRODUCTS(PRODUCT_ID));
                    
                    














insert into Sales.customers values(1,'Virat','Kohli',9999999999,'abc1@gmail.com','highway road','Delhi','Delhi',400000);
insert into Sales.customers values(2,'Arijit','singh',9999999998,'abc2@gmail.com','highway road','Delhi','Delhi',400000);
insert into Sales.customers values(3,'abc','def',9999999997,'abc3@gmail.com','highway road','Delhi','Delhi',400000);
insert into Sales.customers values(4,'leo','messi',9999999996,'abc4@gmail.com','highway road','Delhi','Delhi',400000);
insert into Sales.customers values(5,'roger','federer',9999999995,'abc5@gmail.com','highway road','Delhi','Delhi',400000);




insert into Production.categories values(1,'Auto1');
insert into Production.categories values(2,'Auto2');
insert into Production.categories values(3,'Auto3');
insert into Production.categories values(4,'Auto4');
insert into Production.categories values(5,'Auto5');

insert into Production.brands values(1,'MG');
insert into Production.brands values(2,'Maruti');
insert into Production.brands values(3,'Ford');
insert into Production.brands values(4,'Kia');
insert into Production.brands values(5,'Honda');



insert into Production.products values(1,'Hector',1,1,'2015/01/21',800000);
insert into Production.products values(2,'Swift',2,2,'2015/02/21',700000);
insert into Production.products values(3,'Ecosport',3,3,'2015/03/21',600000);
insert into Production.products values(4,'Seltos',4,4,'2015/04/21',500000);
insert into Production.products values(5,'Amaze',5,5,'2015/05/21',400000);

insert into Sales.stores values(1,'Gold',9898989898,'gold@gmail.com','GB road','Thane','Maharashtra',400605);
insert into Sales.stores values(2,'Infinty',9898989897,'infinity0@gmail.com','vartak nagar','Pune','Maharashtra',400604);
insert into Sales.stores values(3,'Orion',9898989896,'orion@gmail.com','Manpada','Gurgaon','Maharashtra',400603);
insert into Sales.stores values(4,'Prism',9898989895,'prism@gmail.com','ION park','Powai','Maharashtra',400602);
insert into Sales.stores values(5,'Metro',9898989894,'metro@gmail.com','MG Road','Chennai','Maharashtra',400601);

insert into Production.stocks values(1,1,5);
insert into Production.stocks values(2,2,1);
insert into Production.stocks values(3,3,1);
insert into Production.stocks values(4,4,3);
insert into Production.stocks values(5,5,2);

insert into Sales.staffs values(1,'staff1','staff12','staff1@gmail.com',9797979797,1,1,1);
insert into Sales.staffs values(2,'staff2','staff11','staff2@gmail.com',9797979798,0,2,2);
insert into Sales.staffs values(3,'staff3','staff13','staff3@gmail.com',9797979795,1,3,3);
insert into Sales.staffs values(4,'staff4','staff14','staff4@gmail.com',9797979793,0,4,4);
insert into Sales.staffs values(5,'staff5','staff15','staff5@gmail.com',9797979791,1,5,5);

insert into Sales.orders values(1,1,'Accepted','2019/09/21','2019/09/26','2019/09/22',1,1);
insert into Sales.orders values(2,2,'Accepted','2019/09/21','2019/08/06','2020/09/14',2,2);
insert into Sales.orders values(3,3,'Pending','2019/09/02','2019/07/22','2021/09/30',3,3);
insert into Sales.orders values(4,4,'Accepted','2019/09/11','2019/09/16','2021/09/15',4,4);
insert into Sales.orders values(5,5,'Accepted','2019/09/10','2019/01/06','2021/09/12',5,5);


insert into Sales.order_items values(1,1,1,5,2000,30);
insert into Sales.order_items values(2,2,2,1,3000,10);
insert into Sales.order_items values(3,3,3,4,24000,20);
insert into Sales.order_items values(4,4,4,3,5000,15);
insert into Sales.order_items values(5,5,5,10,5000,25);
**/


select * from Sales.customers;















update
 Production.products
set 

Production.products.list_price=p1.list_price*b1.brand_id*10
from
Production.brands b1,Production.products p1
where b1.brand_id=p1.brand_id;


update
Production.categories
set 
Production.categories.category_name='NA'
from 
Production.categories c1, Production.products p
where c1.category_id=p.category_id and p.product_name='seltos';




