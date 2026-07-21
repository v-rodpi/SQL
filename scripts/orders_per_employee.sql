-- Purpose:
-- Calculate the employees with more orders than the average employee using subqueries.
--
-- Exercise:
-- Practice using subqueries to retrieve the employee ID, name, and total orders
-- among the employees with more orders compared to the average.


SELECT EmployeeID,
	   -- Subqueries are used to bring the firstname and lastname from the employees.
	   (SELECT FirstName FROM Employees WHERE EmployeeID = Orders.EmployeeID) AS FirstName,
	   (SELECT LastName FROM Employees WHERE EmployeeID = Orders.EmployeeID) AS LastName,
	   COUNT(EmployeeID) AS TotalOrders
FROM Orders
GROUP BY EmployeeID
HAVING TotalOrders > (
					  -- Subqueries are used to calculate the average orders per employee.
					  SELECT AVG(TotalOrders)
					  FROM (
						SELECT COUNT(*) AS TotalOrders
						FROM Orders
						GROUP BY EmployeeID
						))
ORDER BY TotalOrders DESC
