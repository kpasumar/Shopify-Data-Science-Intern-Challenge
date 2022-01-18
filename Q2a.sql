SELECT Shippers.ShipperName,COUNT(OrderID) AS Total FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE Shippers.ShipperName = 'Speedy Express'
GROUP BY Shippers.ShipperName
