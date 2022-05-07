USE CoderHouse

--Primero

SELECT
	a.Jornada,
	COUNT(b.DocentesID) AS Cant_docentes,
	SUM(a.Costo) AS Suma_total
FROM 
	Asignaturas a
LEFT JOIN Staff b ON a.AsignaturasID = b.Asignatura
WHERE 
	a.Nombre LIKE '%web%'
GROUP BY a.Jornada

-- Segundo

SELECT
	e.Encargado_ID,
	s.Apellido,
	s.Nombre,
	COUNT(s.DocentesID) AS Cant_docentes
FROM Encargado e
LEFT JOIN Staff s ON e.Encargado_ID = s.Encargado
GROUP BY
	e.Encargado_ID,
	s.Apellido,
	s.Nombre
HAVING COUNT(s.DocentesID) > 0

SELECT * FROM Encargado
