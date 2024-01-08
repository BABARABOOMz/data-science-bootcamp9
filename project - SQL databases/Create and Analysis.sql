## Create and Analysis
create table customers (
  customersId int,
  name text,
  gender text,
  orderId int
);

create table orders (
  orderid int,
  orderdate date,
  menusid int,
  customersId int
);

create table menus (
  menusId int,
  namemenu text,
  price int
);

insert into menus values
  (1,"Pizza",35),
  (2,"hamburger",20),
  (3,"frenchfries",15);

insert into orders values
  (1,"2023-1-1",1,1),
  (2,"2023-1-2",1,2),
  (3,"2023-1-3",1,3),
  (4,"2023-2-1",2,10),
  (5,"2023-2-3",1,7),
  (6,"2023-2-5",1,9),
  (7,"2023-3-2",3,6),
  (8,"2023-3-5",2,8),
  (9,"2023-3-10",1,2),
  (10,"2023-4-12",4,6),
  (11,"2023-4-14",2,5),
  (12,"2023-5-1",1,5),
  (13,"2023-5-4",1,1),
  (14,"2023-5-5",1,2),
  (15,"2023-5-7",1,4),
  (16,"2023-5-10",1,7),
  (17,"2023-5-12",1,8);

  
insert into customers values
  (1,"Phan","M",2),
  (2,"Oak","M",3),
  (3,"Beam","M",2),
  (4,"Boom","M",1),
  (5,"PIM","F",1),
  (6,"Meen","F",3),
  (7,"Gag","M",2),
  (8,"Mook","F",1),
  (9,"Kanomru","F",3),
  (10,"Malee","F",1);

.mode box
--- Rank Menu Popularity
  SELECT
    m.namemenu,
      COUNT(*)
  FROM orders AS o
  JOIN menus AS m
  ON o.menusid = m.menusId
  WHERE o.orderdate BETWEEN "2023-1-1" AND "2023-5-1"
  GROUP BY 1;

--- Rank Customer Survey 
SELECT 
  c.name,
    m.namemenu,
    COUNT(*),
    CASE 
        when COUNT(*) >= 3 THEN "BEST SELLER"
            WHEN COUNT(*) >= 2 THEN "RECOMMEND MENU"
            ELSE " "
            END as Segment            
FROM customers as c 
JOIN orders  as o 
on c.customersId = o.customersid
JOIN menus as m
ON o.menusid = m.menusid
GROUP BY 1,2;

--- CUSTOMER Behavior (Beam)
SELECT 
      m.namemenu,
          c.gender,
          count(*) as orderscount
FROM (SELECT* FROM customers
       WHERE gender in ("M","F")) as c
JOIN orders as o
ON c.customersId = o.customersid
JOIN menus as m
ON o.menusid = m.menusId
GROUP BY  1,2
order by count(*) desc;
