--workshop 1
Select e.FirstName + ' ' + e.LastName as Name from Employees e
inner join Orders o on e.EmployeeID = o.EmployeeID inner join
[Order Details] od  on o.OrderID = od.OrderID
where od.Quantity = 0

Select * from Employees e left join Orders o 
on e.EmployeeID = o.EmployeeID where e.EmployeeID is null

--workshop 2
Select ProductName, COUNT(*) as Unit from Products p inner join [Order Details] od
on p.ProductID = od.ProductID group by ProductName
order by ProductName

Select ProductName, COUNT(*) as Unit from Products p inner join [Order Details] od
on p.ProductID = od.ProductID where od.Discount>0 group by ProductName
order by ProductName 

--workshop 3
Select c.CategoryName as Name, COUNT(*) as Unit from Categories c
inner join Products p on c.CategoryID = p.CategoryID
inner join [Order Details] od on p.ProductID = od.ProductID
group by c.CategoryName order by c.CategoryName

--workshop 4
Select e2.FirstName + ' ' + e2.LastName as EmployeeName,
e1.FirstName + ' ' + e1.LastName as Boss
from Employees e1 right join Employees e2
on e1.EmployeeID = e2.ReportsTo