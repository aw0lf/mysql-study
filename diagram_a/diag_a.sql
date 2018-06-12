/*
Created: 11.06.2018
Modified: 11.06.2018
Model: diagram_a
Database: MySQL 5.7
*/


-- Create tables section -------------------------------------------------

-- Table Guests

CREATE TABLE `Guests`
(
  `LoginID` Int NOT NULL,
  `Password` Char(4),
  `Fname` Varchar(30),
  `Lname` Varchar(30),
  `Email` Varchar(100),
  `Phone` Char(11),
  `Address` Varchar(50)
)
;

ALTER TABLE `Guests` ADD PRIMARY KEY (`LoginID`)
;

-- Table Rooms

CREATE TABLE `Rooms`
(
  `Number` Int NOT NULL,
  `Level` Int,
  `Style` Varchar(30),
  `Viev` Varchar(30),
  `Beds` Int,
  `Smoking` Char(3),
  `LoginID` Int NOT NULL
)
;

CREATE INDEX `IX_Request` ON `Rooms` (`LoginID`)
;

ALTER TABLE `Rooms` ADD PRIMARY KEY (`Number`)
;

-- Table Reservations

CREATE TABLE `Reservations`
(
  `ResNumber` Int NOT NULL,
  `CheckIn` Datetime,
  `CheckOut` Datetime,
  `LoginID` Int NOT NULL,
  `Number` Int
)
;

CREATE INDEX `IX_Book` ON `Reservations` (`LoginID`)
;

CREATE INDEX `IX_Reservation` ON `Reservations` (`Number`)
;

ALTER TABLE `Reservations` ADD PRIMARY KEY (`ResNumber`)
;

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE `Rooms` ADD CONSTRAINT `Request` FOREIGN KEY (`LoginID`) REFERENCES `Guests` (`LoginID`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Reservations` ADD CONSTRAINT `Book` FOREIGN KEY (`LoginID`) REFERENCES `Guests` (`LoginID`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Reservations` ADD CONSTRAINT `Reservation` FOREIGN KEY (`Number`) REFERENCES `Rooms` (`Number`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


