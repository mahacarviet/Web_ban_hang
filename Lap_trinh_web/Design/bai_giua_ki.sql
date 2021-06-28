create database vest
go

use vest
go

create table Member (
	member_id int identity(1,1) primary key,
	username varchar(50) not null,
	pass varchar(30) not null,
	email varchar(50) not null,
	fullname nvarchar(50) not null,
	phone varchar(20) not null,
	addresss nvarchar(50) not null
)

create table Product (
	product_id int identity(1,1) primary key,
	product_name nvarchar(30) not null,
	product_type nvarchar(30) not null,
	infor nvarchar(100),
	price int not null
)

create table Comment (
	comment_id int identity(1,1) primary key,
	member_id int not null,
	product_id int not null,
	descri nvarchar(100) not null  
)

create table Transactions (
	transaction_id int identity(1,1) primary key,
	member_id int not null,
	product_id int not null,
	quantity int not null,
	cost int,
	decri nvarchar(100)
)

create table Cart (
	cart_id int identity(1,1) primary key,
	member_id int not null,
	product_id int not null,
	quantity int not null,
	decri nvarchar(100)
)

alter table Comment add foreign key (member_id) references Member (member_id);
alter table Comment add foreign key (product_id) references Product (product_id);

alter table Transactions add foreign key (member_id) references Member (member_id);
alter table Transactions add foreign key (product_id) references Product (product_id);

alter table Cart add foreign key (member_id) references Member (member_id);
alter table Cart add foreign key (product_id) references Product (product_id);

