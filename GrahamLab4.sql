--Graham Harrison
--Lab 4
-- Q1
Select city
from agents 
where aid in (
		Select aid
		from orders 
		where cid in (
					select cid
					from customers
					where customers.name='Basics')
					)


-- Q2

Select distinct pid
from orders
where aid in(
		select aid
		from orders 
		where cid in(
				Select cid
				from customers
				where city='Kyoto'));

-- Q3
select cid, name
from customers 
where cid not in(
		select cid 
		from orders
		where aid='a03');

--Q4
Select cid, name
from customers
where cid in(
		select cid
		from orders
		where pid in ('p01', 'p07')
		group by cid
		having count (distinct pid)=2);  
-- Q5
Select distinct pid
from orders
where cid in (
		Select cid
		from orders 
		where aid='a03');
-- Q6
Select name, discount
from customers 
where cid in (
		select cid
		from orders 
		where aid in (
				select aid 
				from agents 
				where city='Dallas'
				   or city='Duluth'));
-- Q7
-- Chose to exclude customers who were already in dallas or Kyoto
-- because of course a=a  
select name
from customers 
where discount in(
			select discount 
			from customers 
			where city='Dallas'
			   or city='Kyoto')
  and city not in('Dallas', 'Kyoto');
  
  


	