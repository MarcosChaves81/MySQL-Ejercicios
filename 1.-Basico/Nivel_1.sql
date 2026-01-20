CREATE DATABASE empresa;

USE empresa;

CREATE TABLE empleados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  edad INT,
  puesto VARCHAR(50)
);

INSERT INTO empleados (nombre, apellido, edad, puesto)
VALUES
('Juan','Perez',28,'Analista'),
('Maria','Gomez',35,'Gerente'),
('Luis','Lopez',22,'Interno'),
('Ana','Martinez',40,'Directora'),
('Pedro','Suarez',30,'Desarrollador');

SELECT * FROM empleados;
SELECT nombre, apellido FROM empleados;
SELECT * FROM empleados WHERE edad > 30;
SELECT * FROM empleados ORDER BY apellido ASC;
SELECT COUNT(*) AS total_empleados FROM empleados;
SELECT * FROM empleados ORDER BY edad ASC LIMIT 1;
UPDATE empleados SET puesto='Senior Developer' WHERE id=5;
