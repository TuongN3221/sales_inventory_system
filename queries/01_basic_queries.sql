-- 1. Retrieve the name, category, and quantity in stock for each product from the products table.
SELECT 
	Name, 
    Category, 
    QuantityInStock
FROM 
	products;

-- 2. Display the first name, last name, and email of customers who are from the "West" region.
SELECT 
	FirstName, 
    LastName
FROM 
	customers
WHERE 
	Region = 'West';

-- 3. For each product, display the product ID and the total quantity sold across all sales.
SELECT 
	ProductID, 
	SUM(QuantitySold) AS QuantitySold
FROM 
	sales
GROUP BY 
	ProductID;

-- 4. Retrieve the name of products (from products) that have at least one sale in the sales table.
SELECT 
	Products.Name
FROM 
	sales Sales
INNER JOIN 
	products Products ON Sales.ProductID = Products.ProductID;

-- 5. List the first and last names of customers who have purchased the product 'MacBook Pro 16"'.
SELECT 
	Customers.FirstName, 
    Customers.LastName
FROM 
	customers Customers
JOIN 
	sales Sales ON Customers.CustomerID = Sales.CustomerID
JOIN 
	roducts Products ON Sales.ProductID = Products.ProductID
WHERE 
	Products.Name = 'MacBook Pro 16"';

-- 6. Count how many customers are there in each region.
SELECT 
	Region, 
	COUNT(Region) AS TotalCustomers
FROM 
	customers
GROUP BY 
	Region;

-- 7. Show each product name and the total revenue it has generated from sales.
SELECT 
	Products.Name, 
    Sales.QuantitySold * Products.Price AS TotalSales
FROM 
	products Products
JOIN 
	sales Sales ON Products.ProductID = Sales.ProductID;
