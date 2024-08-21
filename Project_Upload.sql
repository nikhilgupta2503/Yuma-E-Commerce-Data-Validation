-- CREATE DATABASE IF NOT EXISTS TransactionsDB;

-- USE TransactionsDB;

-- CREATE TABLE Transactions (
--     TransactionID INT,
--     CustomerID INT,
--     TransactionDate DATE,
--     ProductID INT,
--     ProductCategory VARCHAR(50),
--     Quantity INT,
--     PricePerUnit DECIMAL(10,2),
--     TotalAmount DECIMAL(10,2),
--     TrustPointsUsed INT,
--     PaymentMethod VARCHAR(50),
--     DiscountApplied DECIMAL(10,2)
-- );
-- INSERT INTO Transactions (TransactionID, CustomerID, TransactionDate, ProductID, ProductCategory, Quantity, PricePerUnit, TotalAmount, TrustPointsUsed, PaymentMethod, DiscountApplied) VALUES
-- (1, 1002, STR_TO_DATE('08-08-2024 22:00', '%d-%m-%Y %H:%i'), 2008, 'Grocery', 1, 10, 10, 20, 'Trust Points', 5),
-- (2, NULL, STR_TO_DATE('07-08-2024 01:00', '%d-%m-%Y %H:%i'), 2004, 'Home Decor', 1, 10, 10, 0, 'Credit Card', 20),
-- (3, 1004, STR_TO_DATE('02-08-2024 19:00', '%d-%m-%Y %H:%i'), 2002, 'Grocery', 3, 30, 90, 0, 'Credit Card', 25),
-- (4, 1003, STR_TO_DATE('07-08-2024 17:00', '%d-%m-%Y %H:%i'), 2001, 'Toys', 2, 30, 60, 50, NULL, 20),
-- (5, 1001, STR_TO_DATE('09-08-2024 09:00', '%d-%m-%Y %H:%i'), 2008, 'Grocery', 1, NULL, NULL, 20, 'Trust Points', 5),
-- (6, 1001, NULL, 2007, 'Home Decor', 1, NULL, NULL, 20, 'Credit Card', NULL),
-- (7, 1001, STR_TO_DATE('01-08-2024 13:00', '%d-%m-%Y %H:%i'), 2007, 'Home Decor', -1, 30, -30, -10, NULL, NULL),
-- (8, 1005, STR_TO_DATE('04-08-2024 22:00', '%d-%m-%Y %H:%i'), 2006, 'Toys', 1, 50, 50, -10, 'Trust Points', 30),
-- (9, 1004, STR_TO_DATE('02-08-2024 23:00', '%d-%m-%Y %H:%i'), 2008, 'Fashion', 1, NULL, NULL, -10, NULL, NULL),
-- (10, 1004, STR_TO_DATE('01-08-2024 14:00', '%d-%m-%Y %H:%i'), 2005, 'Fashion', 2, 500, 1000, -10, 'Cash', 30),
-- (11, 1001, STR_TO_DATE('09-08-2024 07:00', '%d-%m-%Y %H:%i'), 2003, 'Grocery', 5, NULL, NULL, -10, 'Credit Card', 20),
-- (12, NULL, STR_TO_DATE('09-08-2024 13:00', '%d-%m-%Y %H:%i'), 2004, 'Electronics', 1, 10, 10, -10, 'Cash', 15),
-- (13, 1005, STR_TO_DATE('09-08-2024 22:00', '%d-%m-%Y %H:%i'), 2008, 'Grocery', 3, NULL, NULL, 100, 'Trust Points', 50),
-- (14, 1002, STR_TO_DATE('08-08-2024 21:00', '%d-%m-%Y %H:%i'), 2006, 'Toys', 3, 50, 150, 20, 'Cash', 50),
-- (15, 1001, STR_TO_DATE('02-08-2024 15:00', '%d-%m-%Y %H:%i'), 2003, 'Toys', 1, 30, 30, -10, 'Cash', 20),
-- (16, 1001, STR_TO_DATE('09-08-2024 20:00', '%d-%m-%Y %H:%i'), 2003, 'Toys', 3, 10, 30, 20, 'Trust Points', 10),
-- (17, 1002, STR_TO_DATE('09-08-2024 15:00', '%d-%m-%Y %H:%i'), 2001, 'Toys', 1, NULL, NULL, 20, NULL, 10),
-- (18, 1003, STR_TO_DATE('04-08-2024 09:00', '%d-%m-%Y %H:%i'), 2003, 'Toys', 3, 50, 150, 10, 'Cash', NULL),
-- (19, 1003, STR_TO_DATE('05-08-2024 14:00', '%d-%m-%Y %H:%i'), 2005, 'Home Decor', 3, 500, 1500, 100, NULL, 50),
-- (20, 1002, STR_TO_DATE('03-08-2024 04:00', '%d-%m-%Y %H:%i'), 2007, 'Fashion', 2, NULL, NULL, -10, 'Cash', 50),
-- (21, 1004, STR_TO_DATE('01-08-2024 23:00', '%d-%m-%Y %H:%i'), 2006, 'Toys', 1, 50, 50, 0, NULL, 30),
-- (22, 1001, STR_TO_DATE('07-08-2024 09:00', '%d-%m-%Y %H:%i'), 2003, 'Electronics', 0, 500, 0, 50, 'Trust Points', 15),
-- (23, 1002, STR_TO_DATE('10-08-2024 00:00', '%d-%m-%Y %H:%i'), 2001, 'Electronics', 1, 30, 30, 0, 'Cash', 5),
-- (24, 1002, STR_TO_DATE('08-08-2024 19:00', '%d-%m-%Y %H:%i'), 2005, 'Electronics', 1, NULL, NULL, 100, 'Trust Points', 10),
-- (25, 1003, STR_TO_DATE('06-08-2024 03:00', '%d-%m-%Y %H:%i'), 2002, 'Electronics', 1, 500, 500, 50, 'Cash', 50),
-- (26, 1004, STR_TO_DATE('02-08-2024 16:00', '%d-%m-%Y %H:%i'), 2007, 'Home Decor', 2, 10, 20, 100, 'Trust Points', 30),
-- (27, 1001, STR_TO_DATE('07-08-2024 12:00', '%d-%m-%Y %H:%i'), 2007, 'Electronics', 3, 30, 90, 20, 'Trust Points', 25),
-- (28, 1003, STR_TO_DATE('01-08-2024 14:00', '%d-%m-%Y %H:%i'), 2006, 'Toys', 1, 10, 10, 50, 'Cash', 30),
-- (29, 1003, STR_TO_DATE('02-08-2024 20:00', '%d-%m-%Y %H:%i'), 2007, 'Grocery', 2, 100, 200, 20, 'Cash', 10),
-- (30, 1001, STR_TO_DATE('03-08-2024 16:00', '%d-%m-%Y %H:%i'), 2003, 'Electronics', 1, 20, 20, 0, 'Cash', 10),
-- (31, 1004, STR_TO_DATE('04-08-2024 16:00', '%d-%m-%Y %H:%i'), 2001, 'Home Decor', 3, NULL, NULL, 0, 'Credit Card', 30),
-- (32, 1001, STR_TO_DATE('03-08-2024 22:00', '%d-%m-%Y %H:%i'), 2007, 'Home Decor', 1, 500, 500, 50, NULL, 5),
-- (33, 1001, STR_TO_DATE('01-08-2024 08:00', '%d-%m-%Y %H:%i'), 2007, 'Electronics', 3, 20, 60, 50, 'Credit Card', 20),
-- (34, NULL, STR_TO_DATE('04-08-2024 15:00', '%d-%m-%Y %H:%i'), 2002, 'Grocery', 1, 20, 20, -10, 'Credit Card', 10),
-- (35, NULL, STR_TO_DATE('06-08-2024 08:00', '%d-%m-%Y %H:%i'), 2002, 'Electronics', -1, 500, -500, 100, 'Trust Points', 30),
-- (36, 1005, STR_TO_DATE('06-08-2024 15:00', '%d-%m-%Y %H:%i'), 2004, 'Home Decor', 1, 30, 30, -10, 'Cash', 50),
-- (37, 1002, STR_TO_DATE('09-08-2024 23:00', '%d-%m-%Y %H:%i'), 2005, 'Fashion', 1, NULL, NULL, 100, NULL, 30),
-- (38, 1001, STR_TO_DATE('03-08-2024 14:00', '%d-%m-%Y %H:%i'), 2003, 'Toys', 1, 100, 100, -10, 'Trust Points', 15),
-- (39, 1004, STR_TO_DATE('06-08-2024 18:00', '%d-%m-%Y %H:%i'), 2007, 'Home Decor', -1, 10, -10, 20, 'Credit Card', 20),
-- (40, 1003, STR_TO_DATE('04-08-2024 08:00', '%d-%m-%Y %H:%i'), 2008, 'Electronics', 0, 50, 0, 50, 'Cash', 25),
-- (41, 1001, STR_TO_DATE('06-08-2024 15:00', '%d-%m-%Y %H:%i'), 2007, 'Toys', 1, 10, 10, 0, 'Trust Points', 5),
-- (42, 1003, STR_TO_DATE('07-08-2024 18:00', '%d-%m-%Y %H:%i'), 2001, 'Electronics', 3, 50, 150, 100, 'Cash', NULL),
-- (43, 1001, STR_TO_DATE('07-08-2024 18:00', '%d-%m-%Y %H:%i'), 2004, 'Electronics', 0, 10, 0, 100, 'Trust Points', 25),
-- (44, NULL, STR_TO_DATE('02-08-2024 08:00', '%d-%m-%Y %H:%i'), 2005, 'Fashion', 2, 500, 1000, 0, 'Cash', 20),
-- (45, 1002, STR_TO_DATE('06-08-2024 02:00', '%d-%m-%Y %H:%i'), 2008, 'Toys', 2, 100, 200, -10, 'Credit Card', 20),
-- (46, 1004, STR_TO_DATE('01-08-2024 04:00', '%d-%m-%Y %H:%i'), 2004, 'Toys', 1, NULL, NULL, 100, NULL, 20),
-- (47, 1002, STR_TO_DATE('02-08-2024 16:00', '%d-%m-%Y %H:%i'), 2006, 'Fashion', 1, 50, 50, 20, 'Credit Card', 25),
-- (48, 1003, STR_TO_DATE('02-08-2024 03:00', '%d-%m-%Y %H:%i'), 2005, 'Home Decor', 0, NULL, NULL, 50, NULL, 50),
-- (49, 1003, STR_TO_DATE('06-08-2024 14:00', '%d-%m-%Y %H:%i'), 2007, 'Electronics', -1, NULL, NULL, 0, 'Cash', 20),
-- (50, 1001, STR_TO_DATE('09-08-2024 08:00', '%d-%m-%Y %H:%i'), 2007, 'Grocery', 3, NULL, NULL, 50, 'Trust Points', 30);


-- SET SQL_SAFE_UPDATES = 0;

-- DELETE FROM Transactions
-- WHERE CustomerID IS NULL;

-- SET @avg_price_per_unit = (SELECT ROUND(AVG(PricePerUnit), 0) FROM transactionsdb.transactions WHERE PricePerUnit IS NOT NULL);
-- UPDATE transactionsdb.transactions
-- SET PricePerUnit = @avg_price_per_unit
-- WHERE PricePerUnit IS NULL;

-- UPDATE transactionsdb.transactions
-- SET Quantity = abs(Quantity);

-- UPDATE transactionsdb.transactions
-- SET TotalAmount = Quantity * PricePerUnit;

-- SET @UPDATE_PAYMENT_METHOD = (SELECT PaymentMethod FROM 
-- (SELECT PaymentMethod,COUNT(PaymentMethod) FROM transactionsdb.transactions
-- GROUP BY PaymentMethod
-- ORDER BY COUNT(PaymentMethod) DESC
-- LIMIT 1) T);
-- UPDATE transactionsdb.transactions
-- SET PaymentMethod = @UPDATE_PAYMENT_METHOD
-- WHERE PaymentMethod = '112';

-- UPDATE transactionsdb.transactions
-- SET DiscountApplied = 0
-- WHERE DiscountApplied IS NULL;

-- ALTER TABLE transactionsdb.transactions
-- ADD COLUMN Final_Total_Amount DECIMAL(10, 2);

-- ALTER TABLE transactionsdb.transactions
-- DROP COLUMN TrustPointsUsed,
-- DROP COLUMN Final_Amount,
-- DROP COLUMN Final_Total_Amount;

-- UPDATE transactionsdb.transactions
-- SET DiscountApplied = round(DiscountApplied/100,2)

-- UPDATE transactionsdb.transactions
-- SET Final_Total_Amount = TotalAmount * (1-DiscountApplied)