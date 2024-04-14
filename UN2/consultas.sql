CONN system/<password>
conn <practica1>

/* Este sirve para buscar por iniciales los nombres de las personas 
    Empuezan con A y terminan con alguna B despues*/
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES 
WHERE FIRST_NAME LIKE 'A\_%B' ESCAPE '\';

-- Ahora buscamos valores nulos
SELECT * FROM DOCENTES WHERE <VALOR> IS NULL

-- Para identificar cierto rango de fechas se puede
SELECT FIRST_NAME, HIRE_DATE FROM EMPLPLOYEES
WHERE HIRE_DATE BETWEEN '02-JAN-99' AND '31-DEC-99' AND DEPARMENT_ID = 60;

-- Este regresa el ingreso de los maestros que entrearon en cierta fecha y tienen una categoria
SELECT * FROM DOCENTES
WHERE FECHA_INGRESO BETWEEN '01/OCT/05' AND '31-OCT-05' AND CATEGORIA = 'E13';

-- Esta hace que excluya todos los que no sean categoria E09
SELECT * FROM DOCENTES
WHERE CATEGORIA <> 'E09';

--conversion de caracteres
/*Esto sirve para que pueda dar una busqueda del primer nombre y apellido iniciando siempre con mayusculas
los nombres que empiecen con ja*/
SELECT 'EMPLEADO: ' || INITCAP(FIRST_NAME) || ' ' || INITCAP(LAST_NAME) FROM EMPLOYEES
WHERE UPPER(FIRST_NAME) LIKE 'JA%';

--Concatenar valores seria 
/*Este concatena el primer nombre y el apellido, ademas de que busca los nombres
que acaben en N para mostrar esos en pantalla*/
SELECT DEPARMENT_ID, CONCAT(FIRST_NAME, LAST_NAME) FROM EMPLOYEES
WHERE SUBSTR(FIRST_NAME, -1,1) = 'n';