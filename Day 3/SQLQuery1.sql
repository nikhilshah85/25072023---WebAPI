create table products
(
	pId int primary key,
	pName varchar(20),
	pCategory varchar(20),
	pPrice int,
	pIsInStock bit
)

insert into products values(101,'Pepsi','Cold-Drink',80,1)
insert into products values(102,'Iphone','Electronics',80,1)
insert into products values(103,'Fanta','Cold-Drink',80,0)
insert into products values(104,'Fossil','Electronics',80,1)
insert into products values(105,'Dell Lattitude','Electronics',80,1)
insert into products values(106,'Nike Air','Sports',80,1)
insert into products values(107,'Adidas','Sports',80,0)




select * from products












