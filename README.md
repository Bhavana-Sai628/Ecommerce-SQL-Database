 SQL for Data Analysis - Ecommerce Project

Project Overview
This project is part of a data analysis internship task. The objective is to use SQL queries to analyze structured data from an ecommerce database. We used both **MySQL** and **SQLite** for different environments, and performed various analytical operations such as filtering, joining, grouping, and aggregating data.

---

 Dataset Description
The dataset simulates a basic ecommerce system and includes the following tables:

 `customers` – Contains customer details (name, email, country)
 `products` – List of products with categories and prices
 `orders` – Order history linked to customers
 `order_items` – Item-wise details for each order
 `payments` – Payment method and amount per order


  Tools Used
- DB Browser for SQLite
- MySQL Workbench
- SQL (SQLite/MySQL dialect)


  SQL Topics Covered
I wrote and tested queries using:

** A. SELECT, WHERE, ORDER BY, GROUP BY**
sql
SELECT * FROM customers WHERE country = 'India';
SELECT * FROM orders ORDER BY total_amount DESC;
SELECT customer_id, COUNT(*) AS total_orders FROM orders GROUP BY customer_id;

**B.JOINS (INNER, LEFT)**
SELECT o.order_id, o.order_date, c.customer_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;

**C.SUBQUERIES**
SELECT customer_id, SUM(total_amount) AS spent
FROM orders
GROUP BY customer_id
HAVING spent > (SELECT AVG(total_amount) FROM orders);

 **D. AGGREGATE FUNCTIONS**
SELECT SUM(total_amount) AS total_revenue FROM orders;
SELECT customer_id, AVG(total_amount) AS avg_order FROM orders GROUP BY customer_id;

