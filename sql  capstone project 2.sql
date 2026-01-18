-- SQL Capstone Project 2
DROP TABLE IF EXISTS salesman;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS orders;

CREATE TABLE salesman(
salesman_id TEXT PRIMARY KEY,
name TEXT,
city TEXT,
commission TEXT
);

INSERT INTO salesman VALUES
('5001','Dominic Toretto','Los Angeles','0.15'),
('5002','Brian OConner','Miami','0.13'),
('5003','Roman Pearce','London','0.11');

CREATE TABLE customer(
customer_id TEXT PRIMARY KEY,
cust_name TEXT,
city TEXT,
grade TEXT,
salesman_id TEXT
);

INSERT INTO customer VALUES
('3001','Letty Ortiz','Los Angeles','100','5001'),
('3002','Mia Toretto','Miami','200','5002'),
('3003','Tej Parker','London','300','5003'),
('3004','Han Lue','Los Angeles','200','5001');

CREATE TABLE orders(
ord_no TEXT PRIMARY KEY,
purch_amt TEXT,
ord_date TEXT,
customer_id TEXT
);

INSERT INTO orders VALUES
('70001','250.5','2012-10-05','3001'),
('70002','180.0','2012-10-10','3003');

SELECT cust_name FROM customer
WHERE cust_name LIKE 'A%';

SELECT cust_name FROM customer
WHERE cust_name LIKE '%or%';

SELECT DISTINCT city FROM customer
ORDER BY city;
