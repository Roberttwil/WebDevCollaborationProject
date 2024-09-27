USE db_projectsi;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE product (
	product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE orders(
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
	order_date DATE NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO customers (customer_name, email, country)
VALUES 
('Gading', 'gading123@gmail.com', 'Indonesia'),
('William', 'william123@gmail.com', 'Indonesia'),
('Robert', 'robert123@gmail.com', 'Turkey'),
('Yahya', 'yahya123@gmail.com', 'AS'),
('Arwi', 'arwi123@gmail.com', 'Korea'),
('Jessica', 'jessica123@gmail.com', 'Indonesia'),
('Michael', 'michael123@gmail.com', 'Australia'),
('Siti', 'siti123@gmail.com', 'Malaysia'),
('Liam', 'liam123@gmail.com', 'New Zealand'),
('Olivia', 'olivia123@gmail.com', 'Singapore'),
('James', 'james123@gmail.com', 'United Kingdom'),
('Sophia', 'sophia123@gmail.com', 'United States'),
('Benjamin', 'benjamin123@gmail.com', 'France'),
('Emma', 'emma123@gmail.com', 'Germany'),
('Noah', 'noah123@gmail.com', 'Canada'),
('Charlotte', 'charlotte123@gmail.com', 'South Africa'),
('Ethan', 'ethan123@gmail.com', 'Brazil'),
('Ava', 'ava123@gmail.com', 'Argentina'),
('Lucas', 'lucas123@gmail.com', 'Mexico'),
('Mia', 'mia123@gmail.com', 'Italy');

INSERT INTO product (product_id, product_name, price)
VALUES
('P001', 'Laptop', 15000.00),
('P002', 'Smartphone', 8000.00),
('P003', 'Tablet', 6000.00),
('P004', 'Headphones', 1200.00);


	INSERT INTO orders (customer_id, product_id, quantity, order_date)
	VALUES
	(1, 'P001', 2, '2024-09-01'),
	(2, 'P002', 1, '2024-09-01'),
	(3, 'P003', 3, '2024-09-02'),
	(4, 'P004', 1, '2024-09-02'),
	(5, 'P001', 4, '2024-09-03'),
	(6, 'P002', 2, '2024-09-03'),
	(7, 'P003', 1, '2024-09-04'),
	(8, 'P004', 5, '2024-09-04'),
	(9, 'P001', 2, '2024-09-05'),
	(10, 'P002', 3, '2024-09-05'),
	(11, 'P003', 4, '2024-09-06'),
	(12, 'P004', 1, '2024-09-06'),
	(13, 'P001', 2, '2024-09-07'),
	(14, 'P002', 3, '2024-09-08'),
	(15, 'P003', 1, '2024-09-08'),
	(16, 'P004', 2, '2024-09-09'),
	(17, 'P001', 3, '2024-09-09'),
	(18, 'P002', 4, '2024-09-10'),
	(19, 'P003', 2, '2024-09-11'),
	(20, 'P004', 5, '2024-09-12');

SHOW TABLES;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM product;

DROP TABLE customers;
DROP TABLE product;
DROP TABLE orders;