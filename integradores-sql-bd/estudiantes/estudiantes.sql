-- a) Obtener los alumnos que han entregado prácticas de segundo y tercer curso.

SELECT nro_alumno, nombre FROM practica NATURAL JOIN entrega NATURAL JOIN alumno WHERE curso = 'C2'
INTERSECT 
SELECT nro_alumno, nombre FROM practica NATURAL JOIN entrega NATURAL JOIN alumno WHERE curso = 'C3';



--b) Obtener los alumnos que solo han entregado prácticas de segundo curso

SELECT nro_alumno, nombre FROM practica NATURAL JOIN entrega NATURAL JOIN alumno WHERE curso = 'C2';


--c) Obtener los alumnos que han entregado prácticas de segundo curso y pertenecen al grupo ”BD-11”

SELECT nro_alumno, nombre FROM practica NATURAL JOIN entrega NATURAL JOIN alumno WHERE curso = 'C2' AND grupo = 'BD-11';