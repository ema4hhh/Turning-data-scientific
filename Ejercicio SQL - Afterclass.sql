/*0. 	Crear un espacio de trabajo donde almacenaremos las tablas de nuestro sistema de video club.

/*1. 	Crear la tabla PELICULA (para tener una informaci�n de las pel�culas), la cual va a contener los campos:
--        	.codigo_pelicula (es num�rico, no puede ser nulo y tiene que ser auto incremental).
--        	.titulo (es un campo texto y no puede ser nulo) .
--        	.a�o (es un campo num�rico y no puede ser nulo).
--        	.duraci�n (en este caso vamos a colocar que es un campo num�rico y si puede nulo).*/

 
/*Para prestar las pel�culas debemos crear otra tabla que tenga todos los datos de los contactos, en este caso le vamos a colocar CLIENTES, la misma va a contener los siguientes campos:
.codigo_cliente(es num�rico, no puede ser nulo y tiene que ser auto incremental).
.nombre(es un campo texto y no puede ser nulo) .
.apellido(es un campo texto y no puede ser nulo) .
.tel�fono(es un campo num�rico y no puede ser nulo) .
.direccion(es un campo texto y no puede ser nulo) .*/
 



--2. 	Agregar a la tabla �pelicula� 1 registro y agregar a la tabla �clientes� 1 registro.
 

 


--3. 	Modificar en la tabla pel�cula, el t�tulo que agregaron por el t�tulo �duro de matar� cuando el c�digo de pel�cula sea 3.

 
-- 3a. Dar de alta en la tabla pelicula 10 registros
 
--4. 	Eliminar en la tabla pelicula los registros 6, 7 y 8

 


/*Crear la tabla PRESTAMO, con los siguientes campos:
numero_alquiler(es num�rico, no puede ser nulo y tiene que ser auto incremental).
fecha_fin(campo texto, y deben cargarla de la siguiente manera�dd/mm/yyyy�).
fecha_inicio(campo texto, y deben cargarla de la siguiente manera�dd/mm/yyyy�, no puede ser nulo).
codigo_pelicula(numerico, no puede ser nulo ).
codigo_amigo(numerico, no puede ser nulo).
En el c�digo de pel�cula deben colocar un c�digo existente (cargado) en la tabla que crearon.
En el c�digo de cliente deben colocar un c�digo existente (cargado) en la tabla que crearon.*/

 

--6. 	Cargar  1 registros en la tabla PRESTAMO.

 

--7. 	Modificar el nombre de las tres tablas:

 

--8. Realizar una consulta en SQL que traiga todos los datos de la tabla PRESTAMOS utilizando la sentencia SELECT.
 

-- Realizar una consulta que nos muestre los nombres distintos de la tabla Clientes
 

--Realizar una consulta de la tabla PELICULAS, la cual nos traiga nada m�s que el campo titulo y duraci�n.
 

--9. De la tabla PRESTAMOS traer los n�meros de alquiler que est�n entre 3 y 6 (utilizar el par�metro BETWEEN) 
 

--10. Mostrar de la tabla PELICULAS los t�tulos que por lo menos  contenga �to� (ejemplo: relatos salvajes).
 
