USE CoderHouse

-- First challenge 
SELECT 
	COUNT(Tipo) AS Number
FROM 
	Asignaturas
WHERE 
	Area = 5

-- Second challenge 
SELECT
	Nombre,
	Documento,
	Telefono,
	[Fecha de Nacimiento],
	Profesion
FROM 
	Estudiantes
WHERE 
	Profesion = 6 AND YEAR([Fecha de Nacimiento]) BETWEEN 1970 AND 2000

-- Third challenge 
SELECT
	UPPER(CONCAT(Nombre, '-', Apellido)) AS Nombres_Apellidos,
	[Fecha Ingreso]
FROM 
	Staff
WHERE 
	YEAR([Fecha Ingreso]) = 2021

-- Fourth challenge
SELECT 
	REPLACE(Tipo, 'Encargado ', '') AS Encargado,
	COUNT(Tipo) AS CantEncargados
FROM 
	Encargado
GROUP BY 
	Tipo

-- Fifth challenge
SELECT
	Jornada,
	AVG(Costo) AS Promedio
FROM
	Asignaturas
GROUP BY 
	Jornada
ORDER BY 
	AVG(Costo)

-- Sixth challenge
SELECT
	*,
	YEAR(GETDATE()) - YEAR([Fecha de Nacimiento]) AS Edad
FROM 
	Estudiantes
WHERE 
	YEAR(GETDATE()) - YEAR([Fecha de Nacimiento]) >= 18
ORDER BY 
	Edad

-- Seventh challenge
SELECT
	DocentesID,
	Nombre,
	Correo,
	Camada,
	[Fecha Ingreso]
FROM 
	Staff
WHERE
	Correo LIKE '%.edu' AND DocentesID >= 100

-- Eighth challenge
SELECT
	Nombre,
	Documento,
	[Codigo Postal],
	[Fecha Ingreso]
FROM 
	Estudiantes
WHERE
	YEAR([Fecha Ingreso]) <= 2020

-- Ninth challenge
SELECT
	Nombre,
	Apellido,
	Documento,
	Asignatura
FROM
	Staff
WHERE
	Asignatura IN (
		SELECT
			AsignaturasID
		FROM 
			Asignaturas
		WHERE
			Nombre LIKE '%UX%'
	)
 
-- Tenth challenge
SELECT
	*,
	'25%' AS Porcentaje,
	CAST(ROUND(Costo + (Costo*0.25), 3) AS FLOAT) AS NuevoCosto
FROM
	Asignaturas
WHERE
	Area = (
		SELECT
			AreaID
		FROM 
			Area
		WHERE
			Nombre LIKE 'Marketing Digital'
	) AND Jornada LIKE 'Manana'

SELECT * FROM Asignaturas
SELECT * FROM Area