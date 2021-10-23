select * 
from Student

select *
from Course

select *
from Module

select *
from Offers


-- a)

select s.SID , s.Sname, c.Cname
from Student s , Course c
where s.CID = c.CID


--b)

select o.CID , m.Mname
from Module m , Offers o
where m.Mcode = o.Mcode


-- c)

select c.Cname , m.Mname
from Module m , Course c , Offers o
where c.CID = o.CID and m.Mcode = o.Mcode


-- d)

select s.SID , s.Sname 
from Student s , Course c
where s.CID = c.CID and c.C_fee > 100000


-- e)

select m.Mname
from Module m , Offers o , Course c
where m.Mcode = o.Mcode and c.CID = o.CID and Accadamic_year = 'Y1' and c.Cname = 'Infromaton Technology'

