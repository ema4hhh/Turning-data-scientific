CREATE DATABASE clase8;

USE clase8;

CREATE TABLE proyectos(
    id INT PRIMARY KEY not null,
    titulo VARCHAR(255) NOT NULL
);

CREATE TABLE integrantes(
    id INT PRIMARY KEY not null,
    nombre VARCHAR(120) NOT NULL,
    id_proyecto INT,
    FOREIGN KEY (id_proyecto) 
        REFERENCES proyectos(id)
);

INSERT INTO 
    proyectos(id, titulo)
VALUES
    (1, 'New CRM for Project Sales'),
    (2, 'ERP Implementation'),
    (3, 'Develop Mobile Sales Platform');

INSERT INTO
    integrantes(id, nombre, id_proyecto)
VALUES
    (1, 'John Doe', 1),
    (2, 'Lily Bush', 1),
    (3, 'Jane Doe', 2),
    (4, 'Jack Daniel', null);

	SELECT * FROM proyectos;

	SELECT * FROM integrantes;

--alter authorization on database::clase8 to sa


/*Buscar los miembros que participan de un proyecto,
miembros que no participan en ningun proyecto
y proyectos que no tienen miembros aún*/



/* miembros que participan de un proyecto*/
-- que join?
SELECT i.nombre, p.titulo
FROM integrantes i
JOIN proyectos p ON i.id_proyecto = p.id

select * from integrantes
select * from proyectos


/*Buscar los miembros que participan o no de un proyecto*/
--que join ?

SELECT I.nombre, P.titulo 
FROM integrantes I
LEFT JOIN proyectos P ON i.id_proyecto = p.id






/*Devuelve los proyectos tengan o no miembros aún*/
--que join?
SELECT I.nombre, P.titulo 
FROM integrantes I
LEFT JOIN proyectos P ON i.id_proyecto = p.id

SELECT I.nombre, P.titulo 
FROM integrantes I
RIGHT JOIN proyectos P ON i.id_proyecto = p.id



/*Devuelve los miembros que participan de un proyecto,
miembros que no participan en ningun proyecto
y proyectos que no tienen miembros aún*/
--que join ?

SELECT I.nombre, P.titulo 
FROM integrantes I
FULL OUTER JOIN proyectos P ON i.id_proyecto = p.id







-- ejemplo union
-- buscar el proyecto con mas de 1 integrante y aquel que no tiene integrantes.
--  ambos titulos deben estar en la misma tabla en la misma tabla

SELECT p.titulo, 'PROYECTO + INTEGRANTES'
FROM proyectos p
JOIN integrantes i ON i.id_proyecto = p.id
GROUP BY p.titulo
HAVING COUNT(I.id) > 1

UNION

SELECT p.titulo, 'PROYECTO SIN INTEGRANTES'
FROM proyectos p
LEFT JOIN integrantes I ON I.id_proyecto = P.id
WHERE nombre IS NULL
