SELECT TOP 1 ProductName,COUNT(ProductName) AS Total FROM (SELECT * FROM (SELECT * FROM (SELECT * FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE c.Country = 'Germany') T1
LEFT JOIN OrderDetails od ON T1.OrderID = od.OrderID) T2
LEFT JOIN Products p ON T2.ProductID = p.ProductID) T3
GROUP BY ProductName
ORDER BY 2 DESC
