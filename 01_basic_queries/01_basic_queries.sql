-- 1. What is the total revenue generated per product category?
SELECT 
	Products.Category, 
	SUM(Sales.TotalAmount) AS TotalAmount
FROM 
	Sales Sales
JOIN 
	products Products ON Sales.ProductID = Products.ProductID
GROUP BY 
	Products.Category;

-- 2. How many unique products has each customer purchased?
SELECT 
	Sales.CustomerID, 
    Customers.FirstName, 
    Customers.LastName, 
    COUNT(DISTINCT Sales.ProductID) AS UniquePurchase
FROM 
	Sales Sales
JOIN 
	Customers Customers ON Sales.CustomerID = Customers.CustomerID
GROUP BY 
	Sales.CustomerID, 
    Customers.FirstName, 
    Customers.LastName;

-- 3. For each product, what is the average quantity sold per transaction?
SELECT 
	Products.ProductID, 
    Products.Name, 
    ROUND(AVG(Sales.QuantitySold), 2) AS Avg_Sold
FROM 
	sales Sales
JOIN 
	Products Products ON Sales.ProductID = Products.ProductID
GROUP BY 
	Products.ProductID;

-- 4.  Which regions generate the most revenue?
Select 
	Customers.Region, 
    SUM(Sales.TotalAmount) AS TotalRevenue
FROM 
	sales Sales
JOIN 
	Customers Customers ON Sales.CustomerID = Customers.CustomerID
GROUP BY 
	Customers.Region
ORDER BY 
	TotalRevenue DESC;

-- 5. What are the top 3 product categories by number of units sold?
SELECT 
	Products.Category, 
    SUM(Sales.QuantitySold) AS QuantitySold
FROM 
	sales Sales
JOIN 
	products Products on Sales.ProductID = Products.ProductID
GROUP BY 
	Products.Category;

-- End of 02_basic_queries.
