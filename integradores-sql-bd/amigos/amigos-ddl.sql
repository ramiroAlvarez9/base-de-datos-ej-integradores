CREATE TABLE amigo (
    nombre VARCHAR (100) PRIMARY KEY,
    edad INT,
    fechaIngresoAlGropo TIMESTAMP
);

CREATE TABLE regalo (
    nombre VARCHAR (100),
    destinatario VARCHAR(100),
    fecha TIMESTAMP UNIQUE,
    tipo_regalo VARCHAR(100),
    valor INT,
    PRIMARY KEY (nombre,destinatario,fecha),
    CONSTRAINT regalo_nombre_fk FOREIGN KEY (nombre) REFERENCES amigo(nombre)
);

CREATE TABLE fecha_especial (
    
    fecha TIMESTAMP UNIQUE,
    evento_conmemorativo VARCHAR(100),
    PRIMARY KEY (fecha),
    CONSTRAINT fecha_especial_fecha_fk FOREIGN KEY (fecha) REFERENCES regalo(fecha)

);