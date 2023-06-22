# Inconsistencias en BD

En la tabla de clientes en la columna gender identifique valores de tipo pronombres o profesiones, por lo que tuve que hacer modificaciones en dicho atributo 

##  Paso 1 

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
## Paso 2

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

## Paso 4
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