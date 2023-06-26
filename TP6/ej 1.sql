/* 
 Almacena información sobre la fecha y duración de las actividades deportivas que se organizan en una
 escuela.
 
 */
 
CREATE TABLE actividades (
    cod_act VARCHAR(2),
    nombre_act VARCHAR(20),
    DNI_profesor VARCHAR(10),
    nombre_profesor VARCHAR(30),
    sala VARCHAR(30),
    fecha DATE,
    hora_i TIME,
    hora_f TIME
);