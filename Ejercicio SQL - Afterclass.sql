/*0. 	Crear un espacio de trabajo donde almacenaremos las tablas de nuestro sistema de video club.

/*1. 	Crear la tabla PELICULA (para tener una información de las películas), la cual va a contener los campos:
--        	.codigo_pelicula (es numérico, no puede ser nulo y tiene que ser auto incremental).
--        	.titulo (es un campo texto y no puede ser nulo) .
--        	.año (es un campo numérico y no puede ser nulo).
--        	.duración (en este caso vamos a colocar que es un campo numérico y si puede nulo).*/

 
/*Para prestar las películas debemos crear otra tabla que tenga todos los datos de los contactos, en este caso le vamos a colocar CLIENTES, la misma va a contener los siguientes campos:
.codigo_cliente(es numérico, no puede ser nulo y tiene que ser auto incremental).
.nombre(es un campo texto y no puede ser nulo) .
.apellido(es un campo texto y no puede ser nulo) .
.teléfono(es un campo numérico y no puede ser nulo) .
.direccion(es un campo texto y no puede ser nulo) .*/
 



--2. 	Agregar a la tabla “pelicula” 1 registro y agregar a la tabla “clientes” 1 registro.
 

 


--3. 	Modificar en la tabla película, el título que agregaron por el título “duro de matar” cuando el código de película sea 3.

 
-- 3a. Dar de alta en la tabla pelicula 10 registros
 
--4. 	Eliminar en la tabla pelicula los registros 6, 7 y 8

 


/*Crear la tabla PRESTAMO, con los siguientes campos:
numero_alquiler(es numérico, no puede ser nulo y tiene que ser auto incremental).
fecha_fin(campo texto, y deben cargarla de la siguiente manera‘dd/mm/yyyy’).
fecha_inicio(campo texto, y deben cargarla de la siguiente manera‘dd/mm/yyyy’, no puede ser nulo).
codigo_pelicula(numerico, no puede ser nulo ).
codigo_amigo(numerico, no puede ser nulo).
En el código de película deben colocar un código existente (cargado) en la tabla que crearon.
En el código de cliente deben colocar un código existente (cargado) en la tabla que crearon.*/

 

--6. 	Cargar  1 registros en la tabla PRESTAMO.

 

--7. 	Modificar el nombre de las tres tablas:

 

--8. Realizar una consulta en SQL que traiga todos los datos de la tabla PRESTAMOS utilizando la sentencia SELECT.
 

-- Realizar una consulta que nos muestre los nombres distintos de la tabla Clientes
 

--Realizar una consulta de la tabla PELICULAS, la cual nos traiga nada más que el campo titulo y duración.
 

--9. De la tabla PRESTAMOS traer los números de alquiler que estén entre 3 y 6 (utilizar el parámetro BETWEEN) 
 

--10. Mostrar de la tabla PELICULAS los títulos que por lo menos  contenga “to” (ejemplo: relatos salvajes).
 
