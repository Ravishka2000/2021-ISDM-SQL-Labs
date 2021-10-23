/*Exercise*/


/*1)*/

select count(sid)
from Student


/*2)*/

select count(cid)
from Course


/*3)*/

select count(cid) as NumberOfCourses
from Course


/*4)*/

select count(Mcode)
from Module
where NoOfCredits=3


/*5)*/

select sum(C_fee)
from Course


/*6)*/

select max(C_fee)
from Course


/*7)*/

select min(C_fee)
from Course


/*8)*/

select avg(C_fee)
from Course
