-- 1. Which product category generated the highest total revenue in July 2025?
SELECT 
	Products.Category, 
    SUM(Sales.TotalAmount) AS TotalRevenue
FROM 
	sales Sales
JOIN 
	products Products ON Sales.ProductID = Products.ProductID
WHERE 
	SaleDate BETWEEN '2025-07-01' AND '2025-07-31'
GROUP BY 
	Category
ORDER BY 
	TotalRevenue DESC
LIMIT 
	1;

-- 2. Identify all customers who have purchased more than one distinct product category.
SELECT 
	Customers.FirstName, 
	Customers.LastName
FROM 
	customers Customers
JOIN 
	sales Sales ON Customers.CustomerID = Sales.CustomerID
JOIN 
	products Products ON Sales.ProductID = Products.ProductID
GROUP BY 
	Customers.CustomerID, 
	Customers.FirstName, 
    Customers.LastName
HAVING 
	COUNT(DISTINCT Products.Category) > 1;

-- 3. For each region, determine the total number of customers and the total sales revenue they generated in July 2025.
SELECT 
	Customers.region AS Region, 
    COUNT(DISTINCT Customers.CustomerID) AS TotalCustomers, 
    SUM(Sales.TotalAmount) AS TotalAmount
FROM 
	customers Customers
JOIN 
	sales Sales ON Customers.CustomerID = Sales.CustomerID
WHERE 
	Sales.SaleDate BETWEEN '2025-07-01' AND '2025-07-31'
GROUP BY 
	Customers.region;

-- 4. For each product category, find the average quantity sold per sale.
SELECT 
	Products.Category, 
    ROUND(AVG(Sales.QuantitySold), 2) AS AvgSoldPerSale
FROM 
	sales Sales
JOIN 
	products Products ON Sales.ProductID = Products.ProductID
GROUP BY 
	Products.Category;
    
-- 5. For each customer, show their first purchase date and total number of purchases.
SELECT 
	Customers.FirstName, 
    Customers.LastName, 
    MIN(SaleDate), 
    COUNT(*) AS PurchaseCount
FROM 
	customers Customers
JOIN 
	sales Sales ON Customers.CustomerID = Sales.CustomerID
GROUP BY 
	Customers.CustomerID;

-- 7. Rank customers by their total spending, and show ties.
SELECT 
	Customers.FirstName, 
	Customers.LastName, 
    Customers.Email, 
    SUM(Sales.TotalAmount) AS TotalAmount, 
    RANK() OVER (ORDER BY SUM(TotalAmount) DESC)
FROM 
	sales Sales
JOIN 
	customers Customers ON Sales.CustomerID = Customers.CustomerID
GROUP BY 
	Customers.CustomerID, 
    Customers.FirstName, 
    Customers.LastName, 
    Customers.Email
ORDER BY 
	TotalAmount DESC;