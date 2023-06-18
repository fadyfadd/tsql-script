Create DATABASE Ethan

create table Purchases([id] int identity(1,1) not null primary key , ProductId int , Qty int , OperationDate datetime)
 
create table Products ([id] int identity (1,1) not null  primary key , [Name] nvarchar(100) 
, [Description] nvarchar(100) , price numeric(10,0) , ImageUrl nvarchar(100) , IsValidated bit)

create table Users([id] int identity (1,1) not null primary key , UserName nvarchar(100) , [Password] nvarchar(100) , Role nvarchar(100))

insert into dbo.Users(UserName , Password , [Role]) values('admin' , 'YWRtaW4=' , 'admin')
insert into dbo.Users(UserName , Password , [Role]) values('user' , 'dXNlcg==' , 'user')

insert into dbo.Products(name , description , price , imageurl , isvalidated) VALUES('p1' , 'p1' , 12  , 'product.1.jpg' , 0)

insert into dbo.Purchases(ProductId , Qty , OperationDate) values(3 , 10 , GETDATE())