select *
from Student

select *
from Course

select *
from Offers

select *
from Module



-- 1)

select Cname
from Course
where C_fee in (select max(C_fee)
				from Course)


-- 2)

select m.Mname
from Course c , Module m , Offers o
where c.CID = o.CID and o.Mcode = m.Mcode and c.Cname='Infromaton Technology' and m.Mname = any(select m.Mname
																								from Course c , Module m , Offers o
																								where c.CID = o.CID and o.Mcode = m.Mcode and c.Cname = 'Software Engineering'
																								)


-- 3)

select m.Mname
from Course c , Module m , Offers o
where c.CID = o.CID and o.Mcode = m.Mcode and c.Cname = 'Software Engineering' and m.Mname != any(select m.Mname
																								from Course c , Module m , Offers o
																								where c.CID = o.CID and o.Mcode = m.Mcode and c.Cname='Infromaton Technology'
																								)