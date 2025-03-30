use Northwind

select * from Customers
select * from Orders
select * from Employees

select
C.CustomerID as 'Customer No',
C.ContactName as 'Full Name',
C.City as 'City',
C.CompanyName as 'Company',
C.Phone as 'Phone Number',
O.OrderDate as 'Order Date',
O.ShipCity as 'Shipping',
O.ShipName as 'Ship Name'
from Customers C inner join Orders O 
on C.CustomerID = O.CustomerID

where C.CustomerID = 'ALFKI'

select
C.CustomerID as 'CustomerNo',
C.ContactName as 'Customer Name',
O.OrderDate as 'Order Date',
O.ShipCity as 'Ship City',
E.FirstName+' '+E.LastName as 'Employee Name'
from Customers C
inner join Orders O on C.CustomerID = O.CustomerID
inner join Employees E on O.EmployeeID = E.EmployeeID 
where C.CustomerID = 'VINET'
