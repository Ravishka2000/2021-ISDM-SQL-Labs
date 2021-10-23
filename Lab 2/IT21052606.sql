/*Section 1*/


/*a)*/

select *
from Student;


/*b)*/

select Mname, NoOfCredits
from Module


/*c)*/

select Sname
from Student
where Sname Like 'A%'


/*d)*/

select Sname
from Student
where dob < '1996-01-01'


/*e)*/

select NIC , Sname
from Student
where Address like '%colombo%'


/*f)*/

select Sname
from Student
where Sname like 'k%' and CID = 'DS'


/*g)*/

select Sname
from Student
where CID = 'DS' or CID = 'IT'


/*Section 2*/


/*a)*/

select *
from Student
order by Sname


/*b)*/

select * 
from Student
order by NIC DESC



/*c)*/

select * 
from Student
order by Sname asc, CID desc
