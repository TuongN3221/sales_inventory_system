INSERT INTO Products (Name, Category, Price, QuantityInStock, ReorderLevel)
VALUES ('Logitech Signature M650 Wireless Mouse', 'Electronics', 25.99, 100, 15),
       ('Five Star Spiral Notebook College Ruled 6 Pack', 'Stationery', 2.50, 500, 100),
       ('MacBook Pro 16"', 'Electronics', 899.99, 200, 50),
       ('IPhone 15 Pro Max', 'Electronics', 699.99, 150, 25),
       ('Apple AirPods Pro 2', 'Electronics', 149.99, 100, 50),
       ('Herman Miller Lino Chair', 'Furniture', 708.99, 35, 10),
       ('Ashley Cabalynn Coffee Table', 'Furniture', 319.99, 40, 15),
       ('Men\'s Crew Neck T-Shirt', 'Clothing', 19.99, 200, 50),
       ('LEVI\'S 555 Relaxed Straight Men\'s Jeans', 'Clothing', 49.99, 175, 20),
       ('Under Armour Sonic 7', 'Footwear', 110.00, 60, 10),
       ('Jansport Cross Town Plus Backpack', 'Accessories', 42.95, 100, 20),
       ('Cuisinart 2 Slice Metal Classic Toaster', 'Appliances', 79.99, 40, 10),
       ('George R.R Martin\'s A Song of Ice and Fire', 'Books', 14.99, 250, 10),
       ('Thermos Stainless King Vacuum-Insulated Compact Bottle', 'Accessories', 24.99, 400, 25),
       ('Westclox 20" Indoor/Outdoor Wall Clock', 'Home Decor', 29.99, 80, 20);
INSERT INTO Suppliers (Name, ContactEmail, ContactPhone, ContactPerson, Region, ACTIVE_STATUS)
VALUES 
	('TechSupply Inc.', 'techsupply@techsupply.com', '415-555-0132', 'James Gardner','North', TRUE),
    ('HomeEssentials Co.', 'contact@homeessentials.com', '561-555-7689','Victoria Nguyen', 'West', TRUE),
    ('GlobalWear Distributors', 'support@globalwear.com','330-555-8831', 'James Watkins', 'East', TRUE);



INSERT INTO Customers (FirstName, LastName, Email, Region, JoinDate)
VALUES 
  ('Alice', 'Johnson', 'alice.vjohnson@bing.com', 'East', '2024-08-21'),
  ('Bob', 'Smith', 'bobnmsmith@outlook.com', 'West', '2024-09-10'),
  ('Carlos', 'Ramirez', 'carlosdramirez@yahoo.com', 'South', '2025-01-15'),
  ('Diana', 'Lee', 'dianamlee@gmail.com', 'North', '2025-03-02'),
  ('Emily', 'Zhang', 'emilygzhang@pkng.edu.cn', 'West', '2024-11-30'),
  ('Frank', 'Thompson', 'frank.thompson@gmail.com', 'Midwest', '2025-02-05'),
  ('Grace', 'Kim', 'gracing.kim@hotmail.com', 'East', '2025-04-01'),
  ('Henry', 'Wilson', 'henry.wilson@protonmail.com', 'South', '2024-12-14'),
  ('Isabella', 'Torres', 'isabella.torres@outlook.com', 'West', '2025-01-20'),
  ('Jack', 'Patel', 'jack.patel@usf.edu', 'Midwest', '2025-06-01');
  
  INSERT INTO Sales (ProductID, CustomerID, SaleDate, QuantitySold, TotalAmount)
VALUES
  (1, 1, '2025-07-01', 2, 51.98),
  (3, 2, '2025-07-02', 1, 899.99),
  (4, 3, '2025-07-03', 1, 699.99),
  (5, 1, '2025-07-04', 2, 299.98),
  (6, 4, '2025-07-05', 1, 708.99),
  (7, 5, '2025-07-05', 1, 319.99),
  (9, 6, '2025-07-06', 2, 99.98),
  (10, 7, '2025-07-06', 1, 110.00),
  (13, 8, '2025-07-07', 1, 14.99),
  (12, 9, '2025-07-07', 1, 79.99),
  (14, 10, '2025-07-08', 3, 74.97),
  (2, 2, '2025-07-08', 6, 15.00),
  (11, 3, '2025-07-09', 2, 85.90),
  (8, 4, '2025-07-09', 3, 59.97),
  (15, 5, '2025-07-10', 1, 29.99);

INSERT INTO RestockOrders (ProductID, SupplierID, OrderDate, QuantityOrdered, DeliveryDate)
VALUES
  (1, 1, '2025-06-15', 150, '2025-06-20'),
  (3, 1, '2025-06-18', 100, '2025-06-25'),
  (6, 2, '2025-06-10', 20, '2025-06-14'),
  (7, 2, '2025-06-12', 50, '2025-06-17'),
  (8, 3, '2025-06-22', 100, '2025-06-27'),
  (9, 3, '2025-06-23', 100, '2025-06-28'),
  (14, 2, '2025-06-25', 300, '2025-07-01'),
  (15, 2, '2025-06-26', 50, '2025-07-02');