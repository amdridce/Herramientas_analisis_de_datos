-- Selecciona la base en la que trabajaremos
Use jarvis;

-- Crear tablas con diferentes tipos de datos
-- INT variable numï¿½rica tipo entero
-- VARCHAR variable tipo texto donde se pueden agregar sï¿½mbolos y textos.
Create Table AMC_CLIENTES (
	ID INT AUTO_INCREMENT AUTO_INCREMENT KEY, 
	NOMBRE VARCHAR(25),
	PAIS VARCHAR(25),
	CATEGORIA VARCHAR(30),
	NUM_VENTA INT);

-- ALTER TABLE modifica el diseï¿½o de una tabla despuï¿½s que se haya creado con la instrucciï¿½n CREATE TABLE.
-- Agregar columnas
ALTER TABLE AMC_CLIENTES ADD Telefono INT;

-- Agregar la columna borrado
ALTER TABLE AMC_CLIENTES ADD BORRADO BOOLEAN;

-- Eliminar columnas
ALTER TABLE AMC_CLIENTES DROP NUM_VENTA;

-- Modificar columnas
ALTER TABLE AMC_CLIENTES MODIFY COLUMN TELEFONO VARCHAR(15);

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-- Insertar datos en una tabla ya creada
INSERT INTO AMC_CLIENTES (NOMBRE, PAIS, CATEGORIA, TELEFONO) VALUES ('Anï¿½bal Madrid', 'Chile', 'Premium', '+56971479798');

-- Ver todos los datos de una tabla
SELECT * FROM AMC_CLIENTES;

-- Actualizar datos 
UPDATE AMC_CLIENTES SET BORRADO = TRUE;

-- Eliminar tablas
DROP TABLE AMC_CLIENTES;

-- ¿Cuántos clientes repetidos tengo?
Use jarvis;
SELECT * 
FROM (SELECT NOMBRE, COUNT(*) AS CONTEO
	FROM CLIENTES
	GROUP BY NOMBRE) C
WHERE C.CONTEO > 1;

-- 