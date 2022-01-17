-- Part a
SELECT Shippers.ShipperName,COUNT(OrderID) AS Total FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE Shippers.ShipperName = 'Speedy Express'
GROUP BY Shippers.ShipperName
-- Answer: 54

-- Part b
SELECT TOP 1 Employees.LastName,COUNT(Orders.EmployeeID) AS Total FROM Employees
RIGHT JOIN Orders 
ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.LastName
ORDER BY 2 DESC
-- Answer: Peacock

-- Part c
SELECT TOP 1 ProductName,COUNT(ProductName) AS Total FROM (SELECT * FROM (SELECT * FROM (SELECT * FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE c.Country = 'Germany') T1
LEFT JOIN OrderDetails od ON T1.OrderID = od.OrderID) T2
LEFT JOIN Products p ON T2.ProductID = p.ProductID) T3
GROUP BY ProductName
ORDER BY 2 DESC
-- Answer: Gorgonzola Telino

