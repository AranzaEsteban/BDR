
DROP PROCEDURE IF EXISTS Rel;
DELIMITER $$

CREATE PROCEDURE Rel()
BEGIN
-- Variables para almacenar los resultados de la regresión lineal
    DECLARE intercept FLOAT;
    DECLARE slope FLOAT;
    
-- Variables para realizar los cálculos
    DECLARE x_mean FLOAT;
    DECLARE y_mean FLOAT;
    DECLARE xy_sum FLOAT;
    DECLARE x_sum FLOAT;
    DECLARE y_sum FLOAT;
    DECLARE x_squared_sum FLOAT;
    DECLARE n INT;
    
-- Cálculo de la media y las sumas necesarias
    SELECT AVG(duration), AVG(payments), SUM(duration * payments), SUM(duration), SUM(payments), SUM(duration * duration), COUNT(*) INTO x_mean, y_mean, xy_sum, x_sum, y_sum, x_squared_sum, n FROM Loan;
    
-- Cálculo de los coeficientes de la regresión
    SET slope = (n * xy_sum - x_sum * y_sum) / (n * x_squared_sum - x_sum * x_sum);
    SET intercept = y_mean - slope * x_mean;
    
-- Resultados de la regresión lineal
    SELECT intercept AS 'Intercepto', slope AS 'Pendiente';
END $$

DELIMITER ;
CALL Rel();


-- Arreglo
DROP PROCEDURE IF EXISTS Arreglo;
DELIMITER $$

CREATE PROCEDURE Arreglo(IN array VARCHAR(100), OUT length INT)
BEGIN
-- Cálculo de la cantidad de elementos en el arreglo
    SET length = LENGTH(array) - LENGTH(REPLACE(array, ',', '')) + 1;
END $$

DELIMITER ;

CALL arreglo('1,2,3,4,5', @result);
SELECT @result AS 'Length';


