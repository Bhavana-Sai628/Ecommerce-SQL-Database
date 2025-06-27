
-- Create tables
USE ecommerce;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  email VARCHAR(100),
  country VARCHAR(50)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10,2)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  order_id INT,
  payment_method VARCHAR(50),
  payment_date DATE,
  amount DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert data

INSERT INTO customers VALUES 
(1, 'Alice', 'alice@example.com', 'USA'),
(2, 'Bob', 'bob@example.com', 'Canada'),
(3, 'Charlie', 'charlie@example.com', 'India');

INSERT INTO products VALUES 
(1, 'Laptop', 'Electronics', 1000),
(2, 'Smartphone', 'Electronics', 600),
(3, 'Book', 'Books', 20),
(4, 'Pen', 'Stationery', 2);

INSERT INTO orders VALUES 
(1, 1, '2024-01-10', 1020),
(2, 2, '2024-02-15', 620),
(3, 3, '2024-03-20', 22);

INSERT INTO order_items VALUES 
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 2, 2, 1),
(4, 3, 3, 1),
(5, 3, 4, 1);

INSERT INTO payments VALUES 
(1, 1, 'Credit Card', '2024-01-11', 1020),
(2, 2, 'PayPal', '2024-02-16', 620),
(3, 3, 'Credit Card', '2024-03-21', 22);

