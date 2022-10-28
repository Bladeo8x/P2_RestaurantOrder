DROP DATABASE IF EXISTS rest_db;
CREATE DATABASE rest_db;

USE rest_db;

DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,
  `tableId` int NOT NULL,
  `isCooked` tinyint(1) DEFAULT NULL,
  `isDelivered` tinyint(1) DEFAULT NULL,
  `orderDate` decimal(10,0) DEFAULT NULL,
  `totalCost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerId` (`customerId`),
  FOREIGN KEY (`customerId`) 
  REFERENCES `User` (`id`)
);

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(100) DEFAULT NULL,
  `dish_img` varchar(100) DEFAULT NULL,
  `dish_desc` varchar(100) DEFAULT NULL,
  `dish_price` decimal(10,0) DEFAULT NULL,
  `dish_type` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `orderDetails`;
CREATE TABLE `orderDetails` (
  `orderId` int DEFAULT NULL,
  `dishId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  KEY `orderId` (`orderId`),
  FOREIGN KEY (`orderId`) 
  REFERENCES `order` (`id`)
);

DROP TABLE IF EXISTS `Sessions`;
CREATE TABLE `Sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
);