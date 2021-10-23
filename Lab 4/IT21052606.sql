/* Exercise */

/* (a) */

select CID, count(Mcode)
from Offers
group by CID


/* (b) */

select CID , count(SID) as NumberofStudents
from Student
group by CID


/* (c) */

select CID, Accadamic_year , COUNT(Mcode)
from Offers
group by CID ,Accadamic_year


/* (d) */

select CID,Accadamic_year , COUNT(Mcode)
from Offers
where Semester = 2
group by CID, Accadamic_year


/* (e) */

select CID,Accadamic_year , COUNT(Mcode)
from Offers
where Semester = 2
group by CID, Accadamic_year
order by CID ASC