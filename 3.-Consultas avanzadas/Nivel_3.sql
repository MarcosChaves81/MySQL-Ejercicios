SELECT empleado_id
FROM empleado_proyecto
GROUP BY empleado_id
HAVING COUNT(proyecto_id) > 1;

SELECT d.nombre, SUM(p.presupuesto) AS total_presupuesto
FROM departamentos d
JOIN empleados e ON d.id=e.departamento_id
JOIN empleado_proyecto ep ON e.id=ep.empleado_id
JOIN proyectos p ON ep.proyecto_id=p.id
GROUP BY d.nombre;

SELECT * FROM empleados e
WHERE e.id NOT IN (SELECT empleado_id FROM empleado_proyecto);

SELECT e.nombre, d.nombre AS departamento, p.nombre AS proyecto
FROM empleados e
JOIN departamentos d ON e.departamento_id=d.id
JOIN empleado_proyecto ep ON e.id=ep.empleado_id
JOIN proyectos p ON ep.proyecto_id=p.id;

CREATE VIEW vista_empleados AS
SELECT e.nombre, d.nombre AS departamento, p.nombre AS proyecto
FROM empleados e
JOIN departamentos d ON e.departamento_id=d.id
JOIN empleado_proyecto ep ON e.id=ep.empleado_id
JOIN proyectos p ON ep.proyecto_id=p.id;

SELECT puesto, COUNT(*) AS cantidad
FROM empleados
GROUP BY puesto;

SELECT AVG(edad) AS edad_promedio FROM empleados;

SELECT * FROM proyectos ORDER BY presupuesto DESC LIMIT 1;

SELECT * FROM empleados ORDER BY edad ASC LIMIT 3;

SELECT d.nombre, COUNT(e.id) AS cantidad
FROM departamentos d
JOIN empleados e ON d.id=e.departamento_id
GROUP BY d.nombre
HAVING COUNT(e.id) > 2;
