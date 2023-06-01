

DROP DATABASE IF EXISTS BDR_financial;

CREATE DATABASE BDR_financial;

USE BDR_financial;

drop table if exists district;

-- Creación e integración de datos en la 'district'
CREATE TABLE district (
  District_ID INT PRIMARY KEY,
  A2 INT,
  A3 INT,
  A4 INT,
  A5 INT,
  A6 INT,
  A7 INT,
  A8 INT,
  A9 INT,
  A10 INT,
  A11 INT,
  A12 INT,
  A13 INT,
  A14 INT,
  A15 INT,
  A16 INT
);

INSERT INTO district (District_ID, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16)
VALUES
  (1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150),
  (2, 11, 21, 31, 41, 51, 61, 71, 81, 91, 101, 111, 121, 131, 141, 151),
  (3, 12, 22, 32, 42, 52, 62, 72, 82, 92, 102, 112, 122, 132, 142, 152),
  (4, 13, 23, 33, 43, 53, 63, 73, 83, 93, 103, 113, 123, 133, 143, 153),
  (5, 14, 24, 34, 44, 54, 64, 74, 84, 94, 104, 114, 124, 134, 144, 154);

 
drop table if exists account;

-- Creación e integración de datos en la  'account'
CREATE TABLE account (
  Account_ID INT PRIMARY KEY,
  District_ID INT,
  frecuency INT,
  date DATE,
  FOREIGN KEY (District_ID) REFERENCES district(District_ID)
);

INSERT INTO account (Account_ID, District_ID, frecuency, date)
VALUES
  (1, 1, 1, '2023-05-31'),
  (2, 2, 2, '2023-05-31'),
  (3, 3, 1, '2023-05-31'),
  (4, 1, 3, '2023-05-31'),
  (5, 2, 2, '2023-05-31');


drop table if exists trans;

-- Creación e integración de datos en la  'trans'
CREATE TABLE trans (
  Trans_ID INT PRIMARY KEY,
  date DATE,
  Account_ID INT,
  type VARCHAR(3),
  operation VARCHAR(3),
  amount INT,
  balance INT,
  k_symbol VARCHAR(6),
  bank VARCHAR(20),
  FOREIGN KEY (Account_ID) REFERENCES account(Account_ID)
);

INSERT INTO trans (Trans_ID, date, Account_ID, type, operation, amount, balance, k_symbol, bank)
VALUES
  (1, '2023-05-31', 1, 'ABC', 'XYZ', 100, 500, 'SYM1', 'Bank1'),
  (2, '2023-05-31', 2, 'DEF', 'XYZ', 200, 600, 'SYM2', 'Bank2'),
  (3, '2023-05-31', 3, 'GHI', 'XYZ', 300, 700, 'SYM3', 'Bank3'),
  (4, '2023-05-31', 4, 'JKL', 'XYZ', 400, 800, 'SYM4', 'Bank4'),
  (5, '2023-05-31', 5, 'MNO', 'XYZ', 500, 900, 'SYM5', 'Bank5');



drop table if exists client;

-- Creación e integración de datos en la 'client'
CREATE TABLE client (
  Client_ID INT  PRIMARY KEY,
  birth_date DATE,
  District_ID INT,
  gender VARCHAR(10),
  FOREIGN KEY (District_ID) REFERENCES district(District_ID)
);

INSERT INTO client (Client_ID, birth_date, District_ID, gender)
VALUES
  (1, '1990-01-01', 1, 'Male'),
  (2, '1985-03-15', 2, 'Female'),
  (3, '1978-11-30', 3, 'Male'),
  (4, '1995-06-10', 1, 'Female'),
  (5, '1982-09-20', 2, 'Male');


drop table if exists disp;

-- Creación e integración de datos en la 'disp'
CREATE TABLE disp (
  Disp_ID INT PRIMARY KEY,
  Client_ID INT,
  Account_ID INT,
  type VARCHAR(10),
  FOREIGN KEY (Client_ID) REFERENCES client(Client_ID),
  FOREIGN KEY (Account_ID) REFERENCES account(Account_ID)
);

INSERT INTO disp (Disp_ID, Client_ID, Account_ID, type)
VALUES
  (1, 1, 1, 'Owner'),
  (2, 2, 2, 'Owner'),
  (3, 3, 3, 'Owner'),
  (4, 4, 4, 'Owner');

 
drop table if exists card;

-- Creación e integración de datos en la 'card'
CREATE TABLE card (
  Card_ID INT PRIMARY KEY,
  Disp_ID INT,
  type1 VARCHAR(16),
  issued DATE,
  FOREIGN KEY (Disp_ID) REFERENCES disp(Disp_ID)
);


drop table if exists orders;

-- Creación e integración de datos en la 'orders'
CREATE TABLE orders (
  Order_ID INT PRIMARY KEY,
  Account_ID INT,
  bank_to VARCHAR(16),
  account_to INT,
  amount DECIMAL,
  k_symbol VARCHAR(6),
  FOREIGN KEY (Account_ID) REFERENCES account(Account_ID)
);

INSERT INTO orders (Order_ID, Account_ID, bank_to, account_to, amount, k_symbol)
VALUES
  (1, 1, 'Bank1', 123456, 500.50, 'SYM1'),
  (2, 2, 'Bank2', 654321, 1000.75, 'SYM2'),
  (3, 3, 'Bank1', 987654, 750.25, 'SYM1'),
  (4, 4, 'Bank3', 567890, 300.00, 'SYM3'),
  (5, 5, 'Bank2', 456789, 200.50, 'SYM2');


drop table if exists loan;

-- Creación e integración de datos en la 'loan'
CREATE TABLE loan (
  Loan_ID INT PRIMARY KEY,
  Account_ID INT,
  date DATE,
  amount INT,
  duration INT,
  payments DECIMAL,
  status VARCHAR(6),
  FOREIGN KEY (Account_ID) REFERENCES account(Account_ID)
);


INSERT INTO loan (Loan_ID, Account_ID, date, amount, duration, payments, status)
VALUES
  (1, 1, '2023-05-31', 10000, 12, 900.50, 'ACTIVE'),
  (2, 2, '2023-05-31', 5000, 6, 850.25, 'ACTIVE'),
  (3, 3, '2023-05-31', 8000, 24, 600.75, 'ACTIVE'),
  (4, 4, '2023-05-31', 15000, 36, 1200.00, 'ACTIVE'),
  (5, 5, '2023-05-31', 2000, 12, 200.50, 'ACTIVE');
;

select * from orders