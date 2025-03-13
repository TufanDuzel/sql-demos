Select * from Products

Select ProductID as ID, ProductName as Name from Products

Select p.ProductName as Name, p.UnitsInStock * p.UnitPrice as Total
from Products p

Select p.ProductName + '-' + p.QuantityPerUnit from Products p

Select 'Tufan Düzel' as Student

Select 9*8 as Result

Select p.ProductName from Products as p where p.UnitsInStock = 0 and
p.UnitsOnOrder > 0

Select * from Products where UnitsInStock = 0 or UnitsOnOrder = 0

Select * from Products where not ProductName = 'Perth Pasties' and
UnitsInStock = 0

Select * from Products order by UnitPrice asc, ProductName desc

Select * from Products where ProductName like '%ch%'

Select * from Products where UnitPrice between 10 and 46 order by
UnitPrice

Select * from Products where CategoryID in (1,2)

Select COUNT(*) as [Total Products] from Products
Select COUNT(ProductName) from Products
Select COUNT(Region) from Customers

Select MIN(UnitPrice) from Products
Select MAX(UnitPrice) from Products
Select AVG(UnitPrice) from Products
Select SUM(UnitPrice * Quantity) as Earning from [Order Details] 
Select RAND()

Select LEFT('Tufan', 3)
Select LEFT(ProductName, 3) from Products

Select RIGHT('Tufan', 3)
Select RIGHT(ProductName, 3) from Products

Select LEN('Tufan Düzel')
Select ProductName, LEN(ProductName) as Character from Products

Select LOWER('TufAN dÜzEL')
Select UPPER('TufAN dÜzEL')

Select TRIM('Tufan Düzel')
Select TRIM(ProductName) from Products where TRIM(ProductName) = 'Chai'

Select * from Products where LEN(ProductName)>10

Select LTRIM('     Tufan Düzel     ')
Select RTRIM('     Tufan Düzel     ')

Select REVERSE('Tufan Düzel')

Select CHARINDEX('n', 'Tufan Düzel', 3)

Select ProductName from Products
where CHARINDEX('anton', ProductName, 1)>0

Select ProductName From Products where ProductName like '%anton%'

Select REPLACE('Tufan Düzel', ' ', '_')
Select REPLACE(ProductName, ' ', '_') from Products

Select SUBSTRING('Tufan Düzel', 2, 5)

Select ASCII('B')
Select CHAR(66)

Select distinct Country from Customers order by Country

Select Country, City, COUNT(*) as Total from Customers
where City <> 'Nantes'
group by Country, City having COUNT(*)>1
order by Country

Select * from Products p inner join Categories c
on p.CategoryID = c.CategoryID
where p.UnitPrice>20
order by p.CategoryID

Select p.ProductName, o.OrderDate, od.Quantity * od.UnitPrice as Total
from Products p inner join [Order Details] od
on p.ProductID = od.ProductID inner join Orders o
on o.OrderID = od.OrderID
order by p.ProductName, o.OrderDate

Select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
where od.ProductID is null

Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null

Select c.ContactName, c.CustomerID from Orders o
right join Customers c
on o.CustomerID = c.CustomerID
where o.CustomerID is null

Select * from Customers c full join Orders o
on o.CustomerID = c.CustomerID

Select * from Employees e left join Orders o
on e.EmployeeID = o.EmployeeID
where o.EmployeeID is null

Select p.ProductName, COUNT(*) as Amount from Products p
inner join [Order Details] od
on od.ProductID = od.ProductID
where od.Discount>0
group by p.ProductName
order by p.ProductName

Select c.CategoryName, COUNT(*) from Products p
inner join Categories c
on p.CategoryID = c.CategoryID
group by c.CategoryName

Select * from [Order Details]

Select e2.FirstName + ' ' + e2.LastName as Employee,
e1.FirstName + ' ' + e1.LastName as Boss from Employees e1
inner join Employees e2
on e1.EmployeeID = e2.EmployeeID

Select * from Employees

insert into Categories (CategoryName, Description)
values ('Test Category', 'Test Category Description')

insert into [Order Details] values (10248, 12, 12, 10, 0)

update Categories set CategoryName = 'Test Category Update',
Description = 'Test Category Description Update'
where CategoryID>=9

update Territories set TerritoryDescription = 'Ýç Anadolu'

delete from Categories where CategoryID>=9

Select * from CustomersWork

insert into CustomersWork (CustomerID, CompanyName, ContactName)
select CustomerID, CompanyName, ContactName from Customers
where ContactName like '%en%'

update Customers set CompanyName = CustomersWork.CompanyName
from Customers inner join CustomersWork
on Customers.CustomerID = CustomersWork.CustomerID
where CustomersWork.CompanyName like '%Test%'

Select CustomerID, CompanyName, ContactName from Customers
union all select * from CustomersWork