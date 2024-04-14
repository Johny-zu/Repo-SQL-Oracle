-- nos conectamos a la primera practica
CONN system/<password>
conn <practica1>

--en caso de ver lo que tiene la BD
SELECT * FROM TAB;

--en caso de ver una tabla en especifico
DESC <tabla>
--ejemplo
DESC CLIENTES

--Como tenemos un DATE debemos revisar como se tiene que escribir, a veces vara
SELECT VALUE FROM V$NLS_PARAMETERS WHERE PARAMETER = 'NLS_DATE_FORMAT';

--HAGAMOS UN INSERT
INSERT INTO CLIENTES (ID_CLIENTES, NOMBRE, APELLIDO, DIRECCION, FECHA_NAC)
VALUES (1, 'Miles', 'Garcia Morales', 'A.Morales', TO_DATE('13-08-03', 'DD-MM-RR'));

INSERT INTO CLIENTES (ID_CLIENTES, NOMBRE, APELLIDO, DIRECCION, FECHA_NAC)
VALUES (2, 'Sebastian', 'Rosales Villanueva', 'A.los Rosales', TO_DATE('18-12-05', 'DD-MM-RR'));

-- Hagamos unos Select
SELECT * FROM CLIENTES WHERE ID_CLIENTES = 1;
SELECT * FROM CLIENTES WHERE ID_CLIENTES = 2;

--Hagamos unos updates
INSERT INTO CLIENTES (ID_CLIENTES, NOMBRE, APELLIDO, DIRECCION, FECHA_NAC)
VALUES (3, 'Pedro', 'Peralta', 'A.Robles', '01-DEC-02');

UPDATE CLIENTES SET NOMBRE = 'Jade' WHERE ID_CLIENTES = 3;

SELECT * FROM CLIENTES WHERE ID_CLIENTES = 3; --Este lo hacemos para confirmar los cambios

--Eliminemos un dato
DELETE FROM CLIENTES WHERE ID_CLIENTES = 3;
SELECT * FROM CLIENTES; --Igual para confirmar