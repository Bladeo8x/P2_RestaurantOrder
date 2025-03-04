DROP DATABASE IF EXISTS rest_db;
CREATE DATABASE rest_db;

USE rest_db;

CREATE TABLE User (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  password VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  customerId INT NOT NULL,
  tableId INT NOT NULL,
  isCooked BOOLEAN,
  isDelivered BOOLEAN,
  orderDate DECIMAL,
  totalCost DECIMAL,
  FOREIGN KEY (customerId)
  REFERENCES User(id)
);

CREATE TABLE menu (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dishId INT,
  dishName VARCHAR(100) NOT NULL,
  dishImg VARCHAR(100),
  dishDesc VARCHAR(100) NOT NULL,
  dishPrice DECIMAL,
  dishType DECIMAL
);

CREATE TABLE orderDetails (
  orderId INT,
  dishId INT,
  quantity INT,
  FOREIGN KEY (orderId)
  REFERENCES orders(id)
);