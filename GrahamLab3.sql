-- Graham Harrison 
--Lab 3
-- 2/4/14

-- Q1
Select name, city
from agents
where name='Smith';

-- Q2
Select pid, name, quantity
from products
where priceusd>1.25;

-- Q3
Select ordno, aid
from orders;

-- Q4

Select name, city
from customers
where city='Dallas';

-- Q5
Select name 
from agents
where city!='New York'
  and city!='Newark';
-- Q6
Select *
from products
where city!='New York'
  and city!='Newark'
  and priceusd>=1.00;
-- Q7
Select *
from orders
where mon='jan'
  or mon='mar';

-- Q8
Select *
from orders
where mon='feb'
  and dollars<100.00;

-- Q9
Select *
From orders
where cid='c001';
  
