/* 

AMIGO  <nombre, edad, fechaIngresoAlGrupo>
REGALO <nombre, destinatario, fecha, tipoRegalo, valor>
FECHA_ESPECIAL <fecha, eventoConmemorativo>

    Resuelva las siguientes consultas:
    a) Obtener el listado de <nombre, fechaIngresoAlGrupo, destinatario> de todos los regalos que hizo
    en lo que va de este año 2023 y en noviembre de 2013
    b) Obtener el listado de <nombre, fechaIngresoAlGrupo, destinatario> de todos los regalos realizados
    por amigos que regalaron Flores y Perfumes.
    c) Obtener el listado de amigos bienvenidos, que son los que recibieron regalos en la fecha que ingresaron al grupo.
    d) Obtener el listado de amigos tacaños, que son los que nunca hicieron un regalo.
    e) Obtener el listado de amigos por compromiso, que son los que solamente hicieron regalos en las
    fechas especiales.
*/

--a) Obtener el listado de <nombre, fechaIngresoAlGrupo, destinatario> de todos los regalos que hizo en lo que va de este año 2023 y en noviembre de 2013

SELECT nombre,fecha_ingreso_al_grupo,destinatario FROM regalo  NATURAL JOIN amigo WHERE fecha BETWEEN '01/01/2023' AND '25/06/2023' OR fecha BETWEEN '01/11/2013' AND '30/11/2023';  

-- b) Obtener el listado de <nombre, fechaIngresoAlGrupo, destinatario> de todos los regalos realizados por amigos que regalaron Flores y Perfumes.

SELECT DISTINCT c.nombre, c.fechaIngresoAlGrupo, r.destinatario

FROM regalo r

NATURAL JOIN (SELECT DISTINCT r.nombre, a.fechaIngresoAlGrupo

FROM regalo r

NATURAL JOIN amigo a

WHERE tipoRegalo = 'Flores'

INTERSECT

SELECT DISTINCT r.nombre, a.fechaIngresoAlGrupo

FROM regalo r

NATURAL JOIN amigo a

WHERE tipoRegalo = 'Perfumes') c;



SELECT DISTINCT i.nombre, a.fechaingresoalgrupo, r.destinatario 
FROM amigo a NATURAL JOIN regalo r 
NATURAL JOIN 
(
    SELECT DISTINCT nombre FROM regalo WHERE tipoRegalo = 'Perfumes'
    INTERSECT
    SELECT DISTINCT nombre FROM regalo WHERE tipoRegalo = 'Flores'
)i;

