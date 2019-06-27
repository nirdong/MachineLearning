use test2;
show tables;
show databases;
use Northwind;
show tables;
select * from Orders;


SELECT DISTINCT Company FROM Orders 

SELECT * FROM Persons WHERE City='Beijing'

SELECT * FROM Persons WHERE FirstName='Bush'

SELECT * FROM Persons WHERE Year>1965

SELECT * FROM Persons WHERE FirstName='Thomas' AND LastName='Carter'

SELECT * FROM Persons WHERE firstname='Thomas' OR lastname='Carter'

SELECT Company, OrderNumber FROM Orders ORDER BY Company

SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC