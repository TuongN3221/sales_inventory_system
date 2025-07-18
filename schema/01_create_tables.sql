CREATE TABLE customers (
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Region VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE products(
	ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Category VARCHAR(50),
    PRICE DECIMAL(10, 2),
    QuantityInSTOCK INT,
    ReorderLevel INT
);

CREATE TABLE restockorders(
	OrderID INT PRIMARY KEY AUTO_INCrement,
    FOREIGN KEY (ProductID) REFERENCES products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES suppliers(SupplierID),
    OrderDATE DATE,
    QuantityOrdered INT,
    DeliveryDate DATE
);

CREATE TABLE sales (
	SaleID INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (ProductID) REFERENCES products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    SaleDate DATE,
	QuantitySold INT,
    TotalAmount DECIMAL(10, 2)
);

CREATE TABLE suppliers(
	SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    ContactEmail VARCHAR(255),
    ContactPhone VARCHAR(20),
    ContactPerson VARCHAR(100),
    Region VARCHAR(50),
    ACTIVE_STATUS BOOLEAN
);