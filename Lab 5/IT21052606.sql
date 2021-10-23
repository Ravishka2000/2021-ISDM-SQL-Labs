select *
from Student
 
select *
from Offers

select *
from Course

-- a)

select CID, count(Sname)
from Student
group by CID
having count(Sname) <10

-- b)

select CID
from Offers
group by CID
having count(Mcode) > 3
order by count(Mcode) asc

-- c)

select CID, Accadamic_year, COUNT(Mcode)
from Offers
group by CID, Accadamic_year
having count(Mcode) < 10

-- d)

select CID, count(Mcode)
from Offers
where Accadamic_year = 'Y3'
group by CID
having count(Mcode) > 2