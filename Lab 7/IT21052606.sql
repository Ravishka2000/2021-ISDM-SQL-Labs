select *
from Student

select *
from Course

select *
from Offers

select *
from Module

-- (a)

select c.CID, count(SID)
from Student s,Course c
where s.CID = c.CID
group by c.CID, c.Cname


-- (b)

select c.Cname, count(SID)
from Student s,Course c
where s.CID = c.CID
group by c.CID, c.Cname


-- (c)

select c.CID,c.Cname , count(o.Mcode)
from Course c, Offers o
where c.CID = o.CID and o.Accadamic_year = 'Y1'
group by c.CID,c.Cname
having count(o.Mcode) > 2


-- (d)

select c.Cname, o.Accadamic_year, count(o.Mcode)
from Course c, Offers o
where c.CID = o.CID
group by c.CID, c.Cname, o.Accadamic_year
having count(o.Mcode) > 2
order by count(o.Mcode)