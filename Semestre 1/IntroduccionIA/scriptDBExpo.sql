
CREATE DATABASE EJEMPLO;

-- Crear una tabla llamada 'datos' con tres columnas: texto, número1, número2, y fecha.
CREATE TABLE datos (
    texto TEXT,
    numero1 INTEGER,
    numero2 INTEGER,
    fecha DATE
);


-- Insertar 15 registros de ejemplo en la tabla 'datos'.
INSERT INTO datos (texto, numero1, numero2, fecha) VALUES
    ('Registro 1', 10, 20, '2022-01-01'),
    ('Registro 2', 15, 25, '2022-02-01'),
    ('Registro 3', 20, 30, '2022-03-01'),
    ('Registro 4', 25, 35, '2022-04-01'),
    ('Registro 5', 30, 40, '2022-05-01'),
    ('Registro 6', 35, 45, '2022-06-01'),
    ('Registro 7', 40, 50, '2022-07-01'),
    ('Registro 8', 45, 55, '2022-08-01'),
    ('Registro 9', 50, 60, '2022-09-01'),
    ('Registro 10', 55, 65, '2022-10-01'),
    ('Registro 11', 60, 70, '2022-11-01'),
    ('Registro 12', 65, 75, '2022-12-01'),
    ('Registro 13', 70, 80, '2023-01-01'),
    ('Registro 14', 75, 85, '2023-02-01'),
    ('Registro 15', 80, 90, '2023-03-01');

CREATE TABLE nombre (nid SERIAL PRIMARY KEY, nombre VARCHAR(255));
CREATE TABLE pasatiempos (pid SERIAL PRIMARY KEY, nid INT, actividad VARCHAR(255), 
FOREIGN KEY (pid) REFERENCES nombre(nid));

-- Inserts para la tabla "nombre"
INSERT INTO nombre (nombre) VALUES ('Juan');
INSERT INTO nombre (nombre) VALUES ('María');
INSERT INTO nombre (nombre) VALUES ('Pedro');
INSERT INTO nombre (nombre) VALUES ('Luis');
INSERT INTO nombre (nombre) VALUES ('Ana');

-- Inserts para la tabla "pasatiempos"
INSERT INTO pasatiempos (nid, actividad) VALUES (1, 'Correr');
INSERT INTO pasatiempos (nid, actividad) VALUES (2, 'Leer');
INSERT INTO pasatiempos (nid, actividad) VALUES (3, 'Nadar');
INSERT INTO pasatiempos (nid, actividad) VALUES (4, 'Pintar');
INSERT INTO pasatiempos (nid, actividad) VALUES (5, 'Cocinar');

);

SELECT nombre.nombre, pasatiempos.actividad
FROM nombre
INNER JOIN pasatiempos ON nombre.nid = pasatiempos.nid;
