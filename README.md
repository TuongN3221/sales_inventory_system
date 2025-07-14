# 🛒 Sales and Inventory Management System (MySQL)

This project implements a comprehensive **Sales and Inventory Management System** using **MySQL**. It is designed as a database solution to track products, sales, restocking, customers, and suppliers for a retail business. The project also includes a suite of business analytics queries to support decision-making and inventory control.

---

## 📚 Overview

This system simulates a retail environment with multiple product categories and tracks:

- **Product catalog** with categories, pricing, stock levels, and reorder points
- **Customers** and their purchasing activity
- **Sales transactions**, including quantity sold and revenue
- **Suppliers** and restock orders
- **Restocking history** with delivery timelines

The database is designed to answer key business questions using SQL, ranging from basic analytics to more complex inventory and customer analysis.

---

## 🧱 Project Structure
sales-inventory-management/
│
├── schema/
│ ├── 01_create_tables.sql # Table definitions with constraints
│ └── 02_insert_data.sql # Sample data inserts for products, customers, etc.
│
├── queries/
│ ├── 01_basic_queries.sql # Simple queries for understanding the schema
│ ├── 02_intermediate_queries.sql # Joins, aggregates, subqueries
├── docs/
│ └── ERD.png Entity Relationship Diagram of the schema
└── README.md # Project documentation

---

## 💡 Sample Business Questions Answered

### 🔰 Basic
- What are all the products and their stock levels?
- Which products are below their reorder level?
- What is the total revenue from all sales?

### 🧩 Intermediate
- Which products have never been sold?
- How many different products has each customer purchased?
- What is the total revenue per product category?
- What is the average quantity sold per transaction for each product?

To run this project on your local machine:
1. **Clone the repository**
2. git clone https://github.com/TuongN3221/sales_inventory_system.git
3. cd sales_inventory_system
4. **Create the schema in MySQL**
- Open `schema/01_create_tables.sql` in a MySQL IDE (e.g., MySQL Workbench)
- Execute to create the tables.
5. **Insert sample data**
- Run `schema/02_insert_data.sql` to populate the database with products, customers, suppliers, and transactions.
6. **Run queries**
- Choose a SQL file in the `queries/` folder and execute against your database to explore insights.

## 🗂️ Technologies Used

- **Database**: MySQL 8.x
- **Language**: SQL (DDL & DML)
- **Tools**: MySQL Workbench / CLI
- **Version Control**: Git & GitHub

---

## ✍️ Author

**Tuong Nguyen**  
📫 [TuongN3221](https://github.com/TuongN3221)

---

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

---
