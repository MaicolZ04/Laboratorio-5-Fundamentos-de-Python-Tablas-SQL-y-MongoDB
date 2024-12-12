-- 1 create a table
CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    puesto VARCHAR(100),
    salario INT,
    edad INT CHECK (edad > 0),
    direccion VARCHAR(225),
    telefono VARCHAR(15)
);

-- 2 ingresar datos

INSERT INTO empleados (nombre, apellido, puesto, salario, edad, direccion, telefono)
values
('Juan', 'Rodriguez', 'administrador', 1800000, 34, 'kr 7 calle 12 # 14 - 15', '3154785214'),
('Miguel', 'Perez', 'gerente', 7000000, 28, 'CL 41 # 78 - 25', '3215496875'),
('Jhon', 'Martinez', 'Practicante', 800000, 21, 'Avenida 45 #15 - 24', '3012456875'),
('Maria', 'Pineda', 'Asesor', 1450000, 26, 'Boulevar 25 # 14 - 15', '3124658214'),
('Ricardo', 'Ramirez', 'Supervisor', 1550000, 24, 'Pasaje 34, ciudad', '3145785123'),
('Luis', 'Perez', 'Analista', 1950000, 44, 'kr 12 # 15 -24', '3145487123'),
('Kenny', 'Sarmiento', 'Oficios varios', 1350000, 31, 'cl 14 # 45 - 74', '3141542123'),
('andreyssong', 'Pelaez', 'Asistente', 1300000, 27, 'cl 11 # 20 - 15', '3141584562'),
('Hellen', 'Vargas', 'Vigilante', 1700000, 31, 'cl 9 # 10 - 45', '3111754542'),
('Andrea', 'Castillo', 'Auxiliar', 1500000, 26, 'cl 7 # 25 - 09', '3012545875');

SELECT * FROM empleados;

-- 3 Empleados cuyo salario sea mayor a 1500000

SELECT * FROM empleados
WHERE salario > 1500000;

-- 4 Empleados que tienen más de 30 años

SELECT puesto FROM empleados
WHERE edad > 30;

-- 5 Actualizar salario de empleados 2 y 6

UPDATE empleados
SET salario = 7300000
WHERE nombre = 'Miguel';

UPDATE empleados
SET salario = 2000000
WHERE nombre = 'Luis';

SELECT * FROM empleados;

-- 6 Actualizar telefono de los empleados 7 y 8

UPDATE empleados
SET telefono = '3015485621'
WHERE id = 7;

UPDATE empleados
SET telefono = '3202154875'
WHERE id = 8;

SELECT * FROM empleados;

-- 7 eliminar registro 3 de la tabla

DELETE from empleados
WHERE id = 3;

SELECT * FROM empleados
