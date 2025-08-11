-- Create Customers table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(100),
  city VARCHAR(100)
);

-- Create Orders table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(100),
  customer_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert data into Customers
INSERT INTO Customers (customer_name, city) VALUES
('John Doe', 'New York'),
('Jane Smith', 'Los Angeles'),
('Mike Johnson', 'Chicago'),
('Emily Davis', 'Houston');

-- Insert data into Orders
INSERT INTO Orders (product_name, customer_id, order_date) VALUES
('Laptop', 1, '2025-08-01'),
('Smartphone', 1, '2025-08-02'),
('Tablet', 2, '2025-08-03'),
('Camera', NULL, '2025-08-04');

-- INNER JOIN
SELECT Customers.customer_name, Orders.product_name, Orders.order_date
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- LEFT JOIN
SELECT Customers.customer_name, Orders.product_name, Orders.order_date
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT JOIN
SELECT Customers.customer_name, Orders.product_name, Orders.order_date
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- FULL OUTER JOIN (simulate in MySQL using UNION)
SELECT Customers.customer_name, Orders.product_name, Orders.order_date
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.customer_name, Orders.product_name, Orders.order_date
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;