
CREATE TABLE departamentos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50)
);

INSERT INTO departamentos (nombre) VALUES ('IT'),('RRHH'),('Ventas');

ALTER TABLE empleados ADD departamento_id INT;
ALTER TABLE empleados ADD FOREIGN KEY (departamento_id) REFERENCES departamentos(id);

UPDATE empleados SET departamento_id=1 WHERE puesto='Desarrollador';
UPDATE empleados SET departamento_id=2 WHERE puesto='Gerente';
UPDATE empleados SET departamento_id=3 WHERE puesto='Analista';

SELECT e.nombre, e.apellido, d.nombre AS departamento
FROM empleados e
JOIN departamentos d ON e.departamento_id=d.id;

SELECT d.nombre, COUNT(e.id) AS cantidad
FROM departamentos d
LEFT JOIN empleados e ON d.id=e.departamento_id
GROUP BY d.nombre;

SELECT d.nombre
FROM departamentos d
LEFT JOIN empleados e ON d.id=e.departamento_id
WHERE e.id IS NULL;

UPDATE empleados SET departamento_id = NULL WHERE departamento_id = 3;

DELETE FROM departamentos WHERE id=3;

CREATE TABLE proyectos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  presupuesto DECIMAL(10,2)
);

CREATE TABLE empleado_proyecto (
  empleado_id INT,
  proyecto_id INT,
  PRIMARY KEY (empleado_id, proyecto_id),
  FOREIGN KEY (empleado_id) REFERENCES empleados(id),
  FOREIGN KEY (proyecto_id) REFERENCES proyectos(id)
);
