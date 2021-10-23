
-- 1) , 2)

create table Department (
	dno int,
	dname varchar(50),
	constraint dept_pk primary key (dno)
);

create table Project (
	pno int,
	pname varchar(20),
	constraint pro_pk primary key (pno)
);

create table Employee (
	eno int,
	NIC char(10),
	ename varchar(50),
	address varchar(50),
	dnumber int,
	constraint emp_pk primary key (eno),
	constraint emp_fk foreign key (dnumber)
	references Department (dno)
);

create table Work_on (
	eno int,
	pno int,
	hired_date datetime,
	hours int,
	constraint work_pk primary key (eno,pno),
	constraint work_fk foreign key (eno) references Employee (eno),
	constraint work_pno_fk foreign key (pno) references Project(pno)
);

alter table Project
add location varchar(50)

select *
from Employee

select *
from Department

-- 3)

drop table Work_on
drop table Employee
drop table Department
drop table Project

-- 4)

alter table Employee
add constraint eno_chk check (eno like '[0-9][0-9][0-9]') 

alter table Employee
add constraint NIC_chk check (NIC like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][V-v]')

alter table Employee
alter column ename varchar(50) not null;

alter table Work_on
add constraint hours_chk check (hours > 0)

alter table Department
add constraint dname_chk check (dname in ('Headquarters','Administration','Research'))


-- 5)

insert into Department values (1,'Headquarters');
insert into Department values (4,'Administration');
insert into Department values (5,'Research');

insert into Project values (1,'Road Construction','Bellaire');
insert into Project values (2,'Power Plant','Sugarland');
insert into Project values (3,'Reproduction','Houston');
insert into Project values (4,'Recycling','Stafford');

insert into Employee values(100, '901250087V', 'Smith,John B',   '731 Fondren, Houston' ,5);
insert into Employee values(101, '895290452V', 'Wrong, Franklin T',   '638 Voss, Houston', 5);
insert into Employee values(102, '923859070V', 'Zelaya, Alicia J',   '33321 Castle, Spring', 4);
insert into Employee values(103, '918257988V', 'Wallace, Jennifer S',   '291 Berry, Bellaria', 4);
insert into Employee values(104, '904850045V', 'Narayan, Remesh K',   '975 Fire Oak, Humble' ,5);
insert into Employee values(105, '889950600V', 'English, Joyce A',  '5631 Rice, Houston', 1);
insert into Employee values(106, '915850123V', 'Jabbar, Ahamad V', '980 Dallas, Houston' ,1);

insert into Work_on values( 100, 1, 12/04/2011, 12);
insert into Work_on values( 100, 2, 25/02/2011, 1);
insert into Work_on values( 100, 3, 15/05/2011, 20);
insert into Work_on values( 101, 1, 02/06/2011, 50);
insert into Work_on values( 102, 4, 08/06/2011, 5);
insert into Work_on values( 103, 3, 12/07/2011, 3);
insert into Work_on values( 104, 2, 20/07/2011, 40);
insert into Work_on values( 105, 3, 18/05/2011, 1);
insert into Work_on values( 105, 1, 01/07/2011, 11);
insert into Work_on values( 106, 4, 27/06/2011, 1);

select *
from Work_on

-- 6)

delete from Employee
where ename = 'wallace, Jennifer S'

delete from Work_on
where eno = 103

-- 7)

update Project 
set pname = 'Water Recycling'
where pno = 4

select *
from Project