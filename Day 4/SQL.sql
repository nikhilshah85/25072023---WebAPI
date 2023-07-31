create table deptInfo
(
	deptNo int primary key,
	deptName varchar(20),
	deptCity varchar(20)
)

insert into deptInfo values(10,'Accounts','Mumbai')
insert into deptInfo values(20,'IT','Bangalore')
insert into deptInfo values(30,'HR','Pune')
insert into deptInfo values(40,'Sales','New Delhi')
insert into deptInfo values(50,'Admin','New York')

create table employeeInfo
(
			empNo int primary key,
			empName varchar(20),
			empDesignation varchar(20),
			empSalary int, 
			empIsPermenant bit
)

insert into employeeInfo values(1,'Nikhil','Consultant',5000,1)
insert into employeeInfo values(2,'Riya','Sr.HR',5000,0)
insert into employeeInfo values(3,'Mohan','Sales Executive',5000,1)
insert into employeeInfo values(4,'Rohan','DBA',5000,1)
insert into employeeInfo values(5,'Kriti','Sales Head',5000,0)
insert into employeeInfo values(6,'Mansi','Developer',5000,1)
insert into employeeInfo values(7,'Mahesh','Marketing Admin',5000,1)


alter table employeeInfo add deptNo int

select * from employeeInfo

create table Openings
(
		positionId int primary key,
		totalPositions int,
 		designation varchar(20),
 		JobTitle varchar(30),
 		isPositionOpen bit,
		positionDept int,

	constraint fk_dept foreign key(positionDept) references deptInfo
)

insert into Openings values(201,5,'Sr.Developer','Consultant',1,20)
insert into Openings values(202,10,'Recruitment HR','Consultant',1,30)
insert into Openings values(203,12,'Sales Executive','Consultant',1,40)
insert into Openings values(204,2,'Netowrk Admin','Consultant',0,50)
insert into Openings values(205,11,'Accounant','Consultant',1,10)


create view empDetalilsView
as
select * from employeeInfo e join deptInfo d
on e.deptNo = d.deptNo