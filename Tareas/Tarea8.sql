-- view 1;

DROP VIEW IF EXISTS AccountTransactions;
CREATE VIEW AccountTransactions AS
SELECT A.Account_ID, A.frecuency, T.Trans_ID, T.date, T.type, T.operation, T.amount, T.balance
FROM Account A
INNER JOIN trans T ON A.Account_ID = T.Account_ID;

-- view 2
DROP VIEW IF EXISTS ClientTransactions;
CREATE VIEW ClientTransactions AS
SELECT C.Client_ID, T.Trans_ID, T.date, T.type, T.operation, T.amount, T.balance
FROM Client C
INNER JOIN Account A ON C.Client_ID = A.Client_ID
INNER JOIN trans T ON A.Account_ID = T.Account_ID;

-- merge;


MERGE INTO Orders AS o
USING (
    SELECT o.Order_ID, a.Account_ID, c.Client_ID
    FROM Orders o
    INNER JOIN Account a ON o.Account_ID = a.Account_ID
    INNER JOIN Client c ON a.Client_ID = c.Client_ID
) AS src
ON (o.Order_ID = src.Order_ID)
WHEN MATCHED THEN
    UPDATE SET o.order_status = CONCAT('Account:', src.Account_ID, ' Client:', src.Client_ID);




-- trigger 1; 

DROP TRIGGER IF EXISTS num_prestamo;
CREATE TRIGGER num_prestamo
AFTER INSERT OR UPDATE ON Loan
FOR EACH ROW
BEGIN
    UPDATE Client
    SET loan_counter = loan_counter + 1
    WHERE Client.Client_ID = (SELECT Client_ID FROM Account WHERE Account.Account_ID = NEW.Account_ID);
END;



-- triger 2;
DROP VIEW IF EXISTS Date_update;

CREATE TRIGGER Date_update
AFTER INSERT ON Loan
FOR EACH ROW
BEGIN
    UPDATE Account
    SET date = NEW.date
    WHERE Account.Account_ID = NEW.Account_ID;
END;