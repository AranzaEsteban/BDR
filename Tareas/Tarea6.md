# Obtener calculos mediante funciones de agregación

## Conteo de frecuencias o medias

```mysql
SELECT COUNT(amount) FROM loan;
```
+---------------+
| COUNT(amount) |
+---------------+
|           100 |
+---------------+

## Obtener minimos o maximos

```mysql
 SELECT max(amount) FROM loan;
```
+-------------+
| max(amount) |
+-------------+
|   422512792 |
+-------------+

## Obtener cuartil diferente a la media

Prinero identifique la cantidad de registros y la dividi entre 4 para identificar en que registro corresponderia mi primer percentil 

```mysql
SELECT COUNT(*)/4 AS CUARTIL FROM loan;
```
+---------+
| CUARTIL |
+---------+
| 25.0000 |
+---------+

Posterior a esto ordene mis datos de manera ascendiente y con la funcion limit indique que me extrayera los primeros 25 y de esos mostrara el primer registro 

```mysql
SELECT amount FROM loan ORDER BY amount LIMIT 24,1;
```
+--------+
| amount |
+--------+
|     10 |
+--------+

## Obtener cuartil diferente a la media

Para obtener este cálculo en un principio intenté hacer calculos muy laboriosos y complicados e investigue sobre funciones de percentiles, en como asiganar variables, combinar funciones y demas. Dentro de las funciones que fui viendo encontre la de *HAVING* que fue con la pude obtener el dato buscado y siendo precisa

```mysql
SELECT A2, COUNT(*) AS conteo FROM district GROUP BY A2 HAVING conteo=(SELECT COUNT(A2) AS conteo FROM district GROUP BY A2 ORDER BY conteo DESC LIMIT 1);
```
+------+--------+
| A2   | conteo |
+------+--------+
| West |     19 |
+------+--------+

```mysql
```