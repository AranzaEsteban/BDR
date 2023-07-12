
## Vistas

En la primer vista llamada "AccountTransactions" se muestra información relacionada con las transacciones realizadas en cada cuenta.

```mysql
DROP VIEW IF EXISTS AccountTransactions;
CREATE VIEW AccountTransactions AS
SELECT A.Account_ID, A.frecuency, T.Trans_ID, T.date, T.type, T.operation, T.amount, T.balance
FROM Account A
INNER JOIN trans T ON A.Account_ID = T.Account_ID;
```

En la siguiente vista se muestra las transacciones junto con la información personal del cliente.

```mysql
DROP VIEW IF EXISTS ClientTransactions;
CREATE VIEW ClientTransactions AS
SELECT C.Client_ID, T.Trans_ID, T.date, T.type, T.operation, T.amount, T.balance
FROM Client C
INNER JOIN Account A ON C.Client_ID = A.Client_ID
INNER JOIN trans T ON A.Account_ID = T.Account_ID;
```

## Merge (left, right, inner)

Se combino la tabla "Orders" con las tablas "Account" y "Client" utilizando una condición de unión basada en las claves primarias. Con el fin de que cuando se encuentra una coincidencia, se actualiza la columna "order_status" en la tabla "Orders" utilizando información de las tablas "Account" y "Client".

```mysql
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
```

## Triggers

Se genero el trigger llamado "num_prestamo". Este trigger se activa después de insertar o actualizar una fila en la tabla "Loan". El objetivo es incrementar en 1 el contador de préstamos realizados por el cliente correspondiente en la tabla "Client". La sentencia UPDATE dentro del trigger actualiza la columna "loan_counter" en la tabla "Client" utilizando la información de la tabla "Account" y "Loan".

```mysql
DROP TRIGGER IF EXISTS num_prestamo;
CREATE TRIGGER num_prestamo
AFTER INSERT OR UPDATE ON Loan
FOR EACH ROW
BEGIN
    UPDATE Client
    SET loan_counter = loan_counter + 1
    WHERE Client.Client_ID = (SELECT Client_ID FROM Account WHERE Account.Account_ID = NEW.Account_ID);
END;
```

Con este Trigger se actualizara la columna "date" en la tabla "Account" cada vez que se inserte un nuevo préstamo en la tabla "Loan".

```mysql
DROP VIEW IF EXISTS Date_update;

CREATE TRIGGER Date_update
AFTER INSERT ON Loan
FOR EACH ROW
BEGIN
    UPDATE Account
    SET date = NEW.date
    WHERE Account.Account_ID = NEW.Account_ID;
END;
```
[Codigo en MySQL](https://github.com/AranzaEsteban/BDR/blob/master/Tareas/Tarea8.sql)
