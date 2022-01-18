SELECT TOP 1 Employees.LastName,COUNT(Orders.EmployeeID) AS Total FROM Employees
RIGHT JOIN Orders 
ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.LastName
ORDER BY 2 DESC
