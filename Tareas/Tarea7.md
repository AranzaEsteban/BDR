# Inconsistencias en BD

En la tabla de clientes en la columna gender identifique valores de tipo pronombres o profesiones, por lo que tuve que hacer modificaciones en dicho atributo 

## Hallazgos
En un princio intente hacer los cambios con un *REPLACE* y con ayuda de variables pero no me convecia porque tendría que ingresar todas las columas y el valor por que buscaba reemplazar. En cuestion de optimización no me convencia porque era muy complejo y tomaba mucho tiempo por lo que busque nuevas opciones y encontre la función *CASE* que es común en varios leanguajes y con la que estoy mas familiarizada. A continuación muestro los pasos para hacer el cambio en mi BD 


###  Paso 1 

Identificar los campos únicos 

```mysql
SELECT distinct gender FROM CLIENT;
+--------+
| gender |
+--------+
| Prof.  |
| Miss   |
| Mr.    |
| Dr.    |
| Ms.    |
| Mrs.   |
+--------+
```
### Paso 2

Hacer un UPDATE en la tabla correspondiente y utilizar un CASE para reemplazar el valor buscado 

```mysql
 UPDATE client SET gender = CASE WHEN gender = 'Prof.' THEN 'Male' WHEN gender = 'Miss' THEN 'Female' WHEN gender = 'Mr.' THEN 'Male' WHEN gender = 'Dr.' THEN 'Female' WHEN gender = 'Ms.' THEN 'Female' WHEN gender = 'Mrs.' THEN 'Male' ELSE gender END;
+--------+
| gender |
+--------+
| Male   |
| Female |
+--------+

```

### Paso 4
Validar que los cambios sean correctos

```mysql
SELECT distinct gender FROM CLIENT;
+--------+
| gender |
+--------+
| Male   |
| Female |
+--------+
```