-- Database: Northwind
--
-- Purpose:
-- Calculate the total number of units sold for each product and the
-- revenue generated (Unit Price × Total Quantity Sold) using subqueries.
--
-- Exercise:
-- Practice using subqueries to retrieve the product name and price
-- from the Products table based on the ProductID stored in OrderDetails.

SELECT *,
       Price * Quantity AS Revenue
FROM (
    -- Group sales by product and calculate the total quantity sold.
    -- Subqueries are used to retrieve the product name, unit price and revenue.
    SELECT ProductID,
           (SELECT ProductName
              FROM Products
              WHERE OrderDetails.ProductID = ProductID) AS Name,
           (SELECT Price
              FROM Products
              WHERE OrderDetails.ProductID = ProductID) AS Price,
           SUM(Quantity) AS Quantity
    FROM OrderDetails
    GROUP BY ProductID
)
-- Display products ordered by highest revenue.
ORDER BY Revenue DESC;