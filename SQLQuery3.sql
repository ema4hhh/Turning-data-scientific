/*1.An�lisis de docentes por camada: 
N�mero de documento, nombre del docente y camada para identificar la camada mayor y 
la menor seg�n el n�mero de la  camada. 
N�mero de documento, nombre del docente y camada para identificar la camada con 
fecha de ingreso Mayo 2021. 
Agregar un campo indicador que informe cuales son los registros �mayor o menor� 
y los que son �Mayo 2021� y ordenar el listado de menor a mayor por camada.

Nota: para el ejercicio 1, los dos an�lisis deben encontrarse en el mismo reporte. 
Identificar si es necesario unificar o reunir la consulta SQL.*/

SELECT
	Documento,
	Nombre,
	Camada,
	'May-2021' AS Mark
FROM Staff
WHERE MONTH([Fecha Ingreso]) = 5 AND YEAR([Fecha Ingreso]) = 2021

UNION

SELECT
	Documento,
	Nombre,
	Camada,
	'Major' AS Mark
FROM Staff
WHERE Camada = (SELECT MAX(Camada) FROM Staff)

UNION

SELECT
	Documento,
	Nombre,
	Camada,
	'Minor' AS Mark
FROM Staff
WHERE Camada = (SELECT MIN(Camada) FROM Staff)

ORDER BY
	Camada

SELECT * FROM Staff
ORDER BY Camada DESC

/*2.An�lisis diario de estudiantes: 
Por medio de la fecha de ingreso de los estudiantes identificar: cantidad total de estudiantes.
Mostrar los periodos de tiempo separados por a�o, mes y d�a, y presentar la informaci�n ordenada 
por la fecha que m�s ingresaron estudiantes.*/
--hay que usar una tabla

SELECT 
	COUNT (EstudiantesID) AS Total,
	Year ([Fecha Ingreso]) AS A�o,
	Month ([Fecha Ingreso]) AS Mes,
	Day ([Fecha Ingreso]) AS D�a
FROM 
	Estudiantes
GROUP BY 
	YEAR([Fecha Ingreso]), MONTH ([Fecha Ingreso]), DAY ([Fecha Ingreso])
ORDER BY 
	COUNT (EstudiantesID) DESC

/*3.An�lisis de encargados con m�s docentes a cargo: 
Identificar el top 10 de los encargados que tiene m�s docentes a cargo, 
filtrar solo los que tienen a cargo docentes. 
Ordenar de mayor a menor para poder tener el listado correctamente.
*/

SELECT TOP 10
	Encargado.Nombre,
	COUNT(Encargado.Encargado_ID) AS SupervisesCount,
	Encargado.Tipo
FROM 
	Encargado
INNER JOIN 
	Staff 
ON 
	Encargado_ID = Encargado
WHERE 
	Encargado.Tipo LIKE '%Docentes%'
GROUP BY 
	Encargado.Nombre, Encargado.Tipo
ORDER BY 
	SupervisesCount DESC

/*4.An�lisis de profesiones con m�s estudiantes: 
Identificar la profesi�n y la cantidad de estudiantes que ejercen, 
mostrar el listado solo de las profesiones que tienen m�s de 5 estudiantes.
Ordenar de mayor a menor por la profesi�n que tenga m�s estudiantes.*/

SELECT
	COUNT(*) AS StudentProfCount,
	Profesiones.Profesiones
FROM 
	Estudiantes
INNER JOIN 
	Profesiones
ON 
	Estudiantes.Profesion = Profesiones.ProfesionesID
GROUP BY
	Profesiones.Profesiones
HAVING
	COUNT(*) > 5
ORDER BY
	StudentProfCount DESC


/*5.An�lisis de estudiantes por �rea de educaci�n: 
Identificar: nombre del �rea, si la asignatura es carrera o curso, 
a qu� jornada pertenece, 
cantidad de estudiantes y monto total del costo de la asignatura. 
Ordenar el informe de mayor a menor por monto de costos total 
tener en cuenta los docentes 
que no tienen asignaturas ni estudiantes asignados, 
tambi�n sumarlos.*/

SELECT
	COUNT(Estudiantes.EstudiantesID) AS StudentsCount,
	Asignaturas.Nombre AS Name_,
	Asignaturas.Tipo AS Type_,
	Asignaturas.Jornada AS Journey,
	Area.Nombre AS Area,
	SUM(Asignaturas.Costo) AS Price
FROM Estudiantes
RIGHT JOIN Staff ON Staff.DocentesID = Estudiantes.Docente
LEFT JOIN Asignaturas ON Staff.Asignatura = Asignaturas.AsignaturasID
INNER JOIN Area ON Asignaturas.Area = Area.AreaID
GROUP BY
	Asignaturas.Nombre,
	Asignaturas.Tipo,
	Asignaturas.Jornada,
	Area.Nombre
ORDER BY
	Price DESC


/* 1.An�lisis mensual de estudiantes por �rea: 
Identificar para cada �rea: el a�o y el mes (concatenados en formato YYYYMM), 
cantidad de estudiantes 
y monto total de las asignaturas. 
Ordenar por mes del m�s actual al m�s antiguo y 
por cantidad de clientes de mayor a menor.*/


/* 2.An�lisis encargado tutores jornada noche: 
Identificar el nombre del encargado, el documento, el n�mero de la camada
(solo el n�mero) 
y la fecha de ingreso del tutor. 
Ordenar por camada de forma mayor a menor.*/

/* 3.An�lisis asignaturas sin docentes o tutores: 
Identificar el tipo de asignatura, la jornada, la cantidad de �reas �nicas y 
la cantidad total de asignaturas que no tienen asignadas docentes o tutores.
Ordenar por tipo de forma descendente*/

/* 4.An�lisis asignaturas mayor al promedio: 
Identificar el nombre de la asignatura, el costo de la asignatura y el promedio del costo 
de las asignaturas por �rea. 
Una vez obtenido el dato, del promedio se debe visualizar solo las carreras que se 
encuentran por encima del promedio. */


/* 5. An�lisis aumento de salario docentes: 
Identificar el nombre, documento, el �rea, la asignatura y el aumento del salario del docente, 
este �ltimo calcularlo sac�ndole un porcentaje al costo de la asignatura, 
todos las �reas tienen un porcentaje distinto, 
Marketing-17%, Dise�o-20%, Programacion-23%, Producto-13%, Data-15%, Herramientas 8%
Nota: para el ejercicio 5, los dos indicadores deben encontrarse en el mismo reporte, 
identificar si es necesario unificar o reunir la consulta SQL.*/