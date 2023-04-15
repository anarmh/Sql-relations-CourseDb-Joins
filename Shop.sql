create database Shop
use Shop
create table Products(
[Id] int primary key idEntity(1,1),
[Name] nvarchar(100),
[Count] int,
[Price] decimal
)

create table Categories(
[Id] int primary key idEntity(1,1),
[Name] nvarchar(50),
[ProductId] int foreign key references Products(Id)
)

select * from Products
select * from Categories

select po.Name as 'Product', ct.Name as 'Category' from Products po
inner join Categories ct
on po.Id= ct.ProductId

select po.Name as 'Product', ct.Name as 'Category' from Products po
left join Categories ct
on po.Id= ct.ProductId

select po.Name as 'Product', ct.Name as 'Category' from Products po
right join Categories ct
on po.Id= ct.ProductId

select po.Name as 'Product', ct.Name as 'Category' from Products po
full outer join Categories ct
on po.Id= ct.ProductId



create table Roles(
[Id] int primary key idEntity(1,1),
[Name] nvarchar(50),
)
create table Users(
[Id] int primary key idEntity(1,1),
[Name] nvarchar(50),
)
select * from Roles
create table UserRoles(
[Id] int primary key idEntity(1,1),
[RoleId] int foreign key references Roles(Id),
[UserId] int foreign key references Users(Id)
)


select us.Name as 'Fullname', ro.Name as 'Role' from Users us
inner join UserRoles ur
on us.Id=ur.UserId
inner join Roles ro
on ro.Id=ur.RoleId