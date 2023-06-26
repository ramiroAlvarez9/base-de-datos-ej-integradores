CREATE TABLE alumno (
  nro_alumno INT PRIMARY KEY, 
  nombre VARCHAR (55),  
  grupo VARCHAR(55)
);

CREATE TABLE practica (

    nro_practica INT PRIMARY KEY,
    curso VARCHAR(55),
    fecha TIMESTAMP
);

CREATE TABLE entrega (
    nro_alumno INT,
    nro_practica INT,
    nota INT,
    CONSTRAINT entrega_pks PRIMARY KEY (nro_alumno,nro_practica),
    CONSTRAINT entrega_nro_alumno_fk FOREIGN KEY (nro_alumno) REFERENCES alumno(nro_alumno),  
    CONSTRAINT entrega_nro_practica_fk FOREIGN KEY (nro_practica) REFERENCES practica(nro_practica)

);


INSERT INTO alumno (nro_alumno, nombre, grupo)
VALUES
    (1000, 'Benjamin', 'BD-12'),
    (1001, 'David', 'BD-14'),
    (1002, 'Gabriela', 'BD-15'),
    (1003, 'Gisela', 'BD-13'),
    (1004, 'David', 'BD-11'),
    (1005, 'Samuel', 'BD-14'),
    (1006, 'Gabriel', 'BD-14'),
    (1007, 'Gabriel', 'BD-11'),
    (1008, 'Victoria', 'BD-12'),
    (1009, 'Benjamin', 'BD-11'),
    (1010, 'Daniel', 'BD-15');


INSERT INTO practica (nro_practica, curso, fecha)
VALUES
    (1, 'C1', '2020-03-12'),
    (2, 'C1', '2020-04-13'),
    (3, 'C2', '2020-03-12'),
    (4, 'C2', '2020-04-15'),
    (5, 'C2', '2020-05-11'),
    (6, 'C3', '2020-04-12'),
    (7, 'C3', '2020-04-12'),
    (8, 'C4', '2020-03-12'),
    (9, 'C4', '2020-05-11');

INSERT INTO entrega (nro_alumno, nro_practica, nota)
VALUES
    (1000, 1, 6),
    (1000, 6, 10),
    (1000, 7, 9),
    (1000, 8, 10),
    (1001, 3, 5),
    (1001, 4, 9),
    (1002, 3, 4),
    (1002, 4, 10),
    (1002, 5, 8),
    (1003, 1, 7),
    (1003, 4, 6),
    (1003, 5, 7),
    (1003, 6, 3),
    (1003, 7, 2),
    (1003, 8, 3),
    (1003, 9, 8),
    (1004, 2, 5),
    (1004, 3, 9),
    (1004, 7, 6),
    (1004, 9, 8),
    (1005, 3, 4),
    (1005, 4, 5),
    (1005, 6, 2),
    (1005, 7, 5),
    (1005, 8, 5),
    (1005, 9, 6),
    (1006, 1, 10),
    (1006, 4, 7),
    (1006, 7, 5),
    (1006, 8, 6),
    (1007, 1, 4),
    (1007, 3, 10),
    (1007, 4, 3),
    (1007, 5, 10),
    (1008, 1, 9),
    (1008, 2, 3),
    (1008, 5, 9),
    (1008, 6, 8),
    (1008, 9, 5),
    (1009, 2, 9),
    (1009, 3, 8),
    (1009, 4, 7),
    (1009, 6, 6),
    (1009, 7, 9),
    (1009, 8, 8),
    (1010, 3, 8),
    (1010, 5, 7);
