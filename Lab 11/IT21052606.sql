select * 
from Student

select * 
from Module

select *
from Course

select *
from Offers

-- 1)

select Mname
from Module
where NoOfCredits = (select NoOfCredits
					 from Module
					 where Mcode = 'IE3051')


-- 2)

select Cname
from Course
where C_fee = (select max(c_fee)
			   from Course)


-- 3)

select Mname
from Module
where NoOfCredits <(select NoOfCredits
					from Module
					where Mname = 'Fundamentals of Data Mining')


-- 4)

select c.Cname
from Course c ,Module m,Offers o
where m.Mcode = o.Mcode and o.CID = c.CID and m.NoOfCredits = (select max(NoOfCredits)
															   from Module)


-- 5)

select o.CID,c.Cname
from Offers o,Course c
where o.CID = c.CID and o.Accadamic_year = 'Y4'
group by o.CID,c.Cname
having count(o.Mcode) > (select COUNT(o.Mcode)
						from Offers o , Course c
						where o.CID = c.CID and c.Cname = 'Software Engineering' and o.Accadamic_year = 'Y4')