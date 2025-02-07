﻿--Select
--ANSII
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City = 'London'

Select * from Products where CategoryID=1 or CategoryID=3

Select * from Products where CategoryID=1 and UnitPrice>=10

Select * from Products order by ProductName

Select * from Products order by ProductName,CategoryID

Select * from Products where CategoryID=1 order by UnitPrice desc --ascending --descending

Select * from Products order by UnitPrice asc

Select count(*) Adet from Products where CategoryID=2

Select count(*) from Products group by CategoryID having count(*)<10

Select CategoryID,count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10

Select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>10

--DTO Data Transformation Object

Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID

Select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID

Select * from Customers c inner join Orders o on c.CustomerID = o.CustomerID

Select * from Customers c left join Orders o on c.CustomerID = o.CustomerID
where o.CustomerID is null

Select * from Customers c right join Orders o on c.CustomerID = o.CustomerID

Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on o.OrderID = od.OrderID

--Select count(*) from Products group by CategoryID having count(*)<10

Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o 
on o.OrderID = od.OrderID

Select Product.ProductName As ProductName,
sum(Od.UnitPrice*Od.Quantity) As TotalPrice
from Products Product 
inner join [Order Details] Od
on Product.ProductID=Od.ProductID
inner join Orders O
on O.OrderID=Od.OrderID
group by Product.ProductName
order by TotalPrice