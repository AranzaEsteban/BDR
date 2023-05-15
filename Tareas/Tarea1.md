# Tarea 1



# **Descripción y seleccion de BD**

Selecione un conjunto de [datos financieros](https://relational.fit.cvut.cz/dataset/Financial) que contiene 606 préstamos finalizados con éxito y 76 no finalizados,asi mismo anexada su información y transacciones.
La infromaciòn se encuentra segementada en 8 diferententes tablas, de las cuales se relacionan por campos ID o claves foraneas. 
  

## Información de las tablas
**TABLA:** ***Loan***  
  *Campos*
 * Loan_ID /int/
 * Account_ID  /int/
 * Date /date/
 * Amount  /int/
 * Duration  /int/
 * Payments /decimal/
 * Status  /varchar/
----------
**TABLA:** ***Order***  
  *Campos*
 * order_id  /int/
 * account_id /int/
 * bank_to /vahcar/
 * account_to /int/
 * amount /decimal/
 * k_symbol /vachar/
----------
**TABLA:** ***trans***  
  *Campos*
 * trans_id /int/
 * accoutn_id /int/
 * date /date/
 * type /varchar/
 * Operation /varhcar/
 * amount /int/ 
 * balance /int/
 * k_symbol /varchar/
 * bank /varchar/
 * account /int/ 
------------
**TABLA:** ***card***  
  *Campos*
 * card_id /int/
 * disp_id /int/
 * type /varchar/
 * issued /date/ 
---------
**TABLA:** ***disp***  
  *Campos*
 * disp_id /int/
 * cleint_id /int/
 * account_id /int/
 * type /vatchar/  
-------
**TABLA:** ***client***  
  *Campos*
 * client_id /int/
 * gender /varchar/
 * birth_date /date/
 * district /int/ 
-------
**TABLA:** ***district***  
  *Campos*
 * district_id /int/
 * A2 /int/
 * A3 /int/
 * A4  /int/
 * A5 /int/
 * A6 /int/
 * A7 /int/
 * A8 /int/
 * A9 /int/
 * A10 /decimla/
 * A11 /int/
 * A12 /decimal/
 * A13 /decimal/
 * A14 /int/
 * A15 /int/
 * A16 /int/
--------
**TABLA:** ***account***  
  *Campos*
 * account_id /int/
 * district_id /int/
 * frecuency /varchar/
 * date /date/
---------
---------




## **Investigacion SGBD**


<table>
  <thead>
    <tr>
      <th>Software</th>
      <th>Características</th>
      <th>Ventajas</th>
      <th>Desventajas</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>MySQL</td>
      <td>
    ¬ Software del propietario y publico.  
    ¬ Codigo abierto para uso personal, nivel empresarial necesario uso de licencia. ¬ Programado en C, C++.  
    ¬ Pertenence a Oracle  </td>
      <td>
    ¬ Seguridad  
    ¬ Conectividad a diversas plataformas.  
    ¬ Estabilidad.   
    ¬ Sencilla instalaciòn y configuración.  </td>
      <td>
    ¬ Capacidad limitada.  
    ¬ Utiliza mucho RAM.  
    ¬  Poco apoyo de soporte.  
  </td>
    </tr>
    <tr>
      <td>SQL Server</td>
      <td>
    ¬ Software del propietario.  
    ¬ Desarrollado por Microsoft.  </td>
      <td>
    ¬ Seguridad.  
    ¬ Estabilidad.  
    ¬ Administrador de otro servidores.  
    ¬ Conexión facil a plataformas de Microsoft.  </td>
      <td>
    ¬ Poca capacidad.  
    ¬ Utiliza mucho RAM.   
    ¬ Unicamente con sistema operativo Windows.  </td>
    <<tr>
      <td>Postegre SQL</td>
      <td>
    ¬ Sistema de BD relacional de objetos.  
    ¬ Codigo abierto.  </td>
      <td>
    ¬ Excelente capacidad para grandes cantidades de datos
    ¬ Estabilidad
    ¬ Capacidad para que varios usuarios aacedan al mismo tiempo
    ¬ Accesible en costo/ beneficio</td>
      <td>
    ¬ Capacidad limitada
    ¬ Mas lento que otros software
    ¬ Poco apoyo para soporte</td> 
  </td>
    </tr>
    <tr>
      <td>SQLite</td>
      <td>
    ¬ SGBD relacional
    ¬ Dominio publico 
    ¬ Codigo abierto
    ¬ Programado en C</td>
      <td>
    ¬ Acceso rapido
    ¬ No necesita servidor
    ¬ Acceso facil
    ¬ Soporte</td>
      <td>
    ¬ No soporta grandes capacidades de datos
    ¬ No permite ser portable a otras bd</td>
    </tr>
    <tr>
      <td>Oracle</td>
      <td>
    ¬ Licencia privada
    ¬ Desarrollado por Oracle Corporation</td>
      <td>
    ¬ Soporte
    ¬ SGBD a multiples bases
    ¬ Intuitivo y sencillo </td>
      <td>
    ¬ Costoso
    ¬ Escasa infromación de codigo</td>
    </tr>
  </tbody>
</table>

### Seleccion de SGBD

Elegí MySQL porque es el software que cumple en mayor medida de las funciones requeridas como su capacidad de procesamiento, velocidad, escalabilidad, seguridad y en relación costo/beneficio fue de las mejores opciones porque tambien cuenta con su versión gratuita. Por otro lado es una oprtunidad para aprender este nuevo lenguaje.


## Descripción SGBD

Pertenece a Oracle, es codigo abierto, tiene la capacidad de inslarse en diversos sistemas operativos, es un sistema de BD relacional y cuenta con soporte de 40-50 millones de registros.  

# Referencias

* [MySQL](https://www.dongee.com/tutoriales/caracteristicas-de-mysql/)
* [SQL Server](https://intelequia.com/blog/post/qu%C3%A9-es-microsoft-sql-server-y-para-qu%C3%A9-sirve)
* [Postegre SQL](https://www.ionos.com/digitalguide/server/know-how/postgresql/)
* [SQLite](https://www.hostgator.mx/blog/sqlite-que-es-y-diferencias-con-mysql/)
* [Oracle](https://www.ionos.com/digitalguide/server/know-how/postgresql/)