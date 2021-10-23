create table Department (
	deptNo int,
	name varchar(50),
	building int,
	constraint dept_pk primary key (deptNo),
);

create table Employee (
	eid int,
	name varchar(30),
	salary int,
	dept int,
	address varchar(50),
	constraint emp_pk primary key (eid),
	constraint emp_fk foreign key (dept) references Department (deptNo)
);

drop table Employee

select *
from Employee

select *
from Department