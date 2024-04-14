CONN system/<password>
conn <practica1>

--PARA ENTRAR A LA CUENTA DE HR 
ALTER USER HR ACCOUNT UNLOCK;
ALTER USER HR IDENTIFIED BY HR;
CONN HR/HR; --PUEDE NO LLEVAR ;

/* Este sirve para buscar por iniciales los nombres de las personas 
    Empuezan con A y terminan con alguna B despues*/
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES 
WHERE FIRST_NAME LIKE 'A\_%B' ESCAPE '\';

-- Ahora buscamos valores nulos
SELECT * FROM DOCENTES WHERE <VALOR> IS NULL

-- Para identificar cierto rango de fechas se puede
SELECT FIRST_NAME, HIRE_DATE FROM EMPLPLOYEES
WHERE HIRE_DATE BETWEEN '02-JAN-99' AND '31-DEC-99' AND DEPARTMENT_ID = 60;

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
SELECT DEPARTMENT_ID, CONCAT(FIRST_NAME, LAST_NAME) FROM EMPLOYEES
WHERE SUBSTR(FIRST_NAME, -1,1) = 'n';

--Funcion de LENGTH 
/*Esta sentencia ayudara a contar el tamaño del String ademas de dar valores de conteo hacia un caracter*/
SELECT DEPARTMENT_ID, FIRST_NAME, LENGTH(FIRST_NAME), INSTR(FIRST_NAME, 'a') "Contiene letra A" FROM EMPLOYEES;

--FUNCION AROUND
/*Round puede poner los puntos decimales o quitarlos, por ejemplo si quieres mostrar hasta n numeros de 
un decimal usas round(num, n de decimales que quieres) o si quieres redondear seria Roune(num,0) */
SELECT ROUND(45.923,2), ROUND(45.923,0), ROUND(45923,-1) FROM DUAL;

-- Con esta funcion vemos cuanto tiempo puede llevar los trabajadores trabajndo
SELECT FIRST_NAME, (SYSDATE-HIRE_DATE) "DIAS TRANSCURRIDOS" FROM EMPLOYEES;

-- Veremos una funcion de around usando meses
SELECT DEPARTMENT_ID, HIRE_DATE, ROUND(HIRE_DATE,'MONTH') FROM EMPLOYEES
WHERE HIRE_DATE LIKE '%99';

-- Veremos funciond de fechas con to_char con fechas 
/*TO_CHAR: se utiliza para convertir una fecha en una cadena de caracteres con un formato determinado*/
SELECT DEPARTMENT_ID, FIRST_NAME, TO_CHAR(HIRE_DATE, 'DD/MONTH/YY') INGRESO FROM EMPLOYEES;

-- veremos fucionalidad de to_char usando formato de dinero
/*Este le da el formato de dinero a lo que nosotros le convertimos que diera usando la funcion TO_CHAR*/
SELECT DEPARTMENT_ID, FIRST_NAME, TO_CHAR(SALARY, '$999,999,999.00') INGRESO FROM EMPLOYEES;

--FUNCION CON NVL
SELECT FIRST_NAME, SALARY, COMMISSION_PCT, NVL(COMMISSION_PCT,0) "COMMISION", 
NVL2(COMMISSION_PCT, 'SAL+COM', 'SAL') INGRESO FROM EMPLOYEES;

--la misma pero escrita diferente
SELECT FIRST_NAME, SALARY, COMMISSION_PCT, 
    NVL(COMMISSION_PCT, 0) AS "COMMISION", 
    NVL2(COMMISSION_PCT, SALARY + (SALARY * COMMISSION_PCT), SALARY) AS INGRESO 
FROM EMPLOYEES;

-- Funcion DECODE
/*DECODE: Esta función realiza una operación condicional en la columna
SUELDO: El salario ajustado según el departamento al que pertenece el empleado, multiplicado por un factor
específico según el ID del departamento o el salario base si el DEPARTMENT_ID no coincide con los valores 
especificados en la función DECODE.*/
SELECT FIRST_NAME, DEPARTMENT_ID, SALARY, DECODE(DEPARTMENT_ID, 
40, 1.15*SALARY, 50, 1.20*SALARY, 60, 1.25*SALARY, SALARY) SUELDO
FROM EMPLOYEES;

-- Funciones de grupo
/*AVG sirve para obtener el promedio de valore de N e ignora los nulos, solo numericos
COUNT numero total de registros
sum suma de valores de n, solo para numericos y no nulos*/
SELECT AVG(SALARY), MAX(SALARY), MIN(SALARY), SUM(SALARY), COUNT(SALARY) FROM EMPLOYEES;

--FUNCION COUNT 
/*corregir*/
SELECT COUNT(*), COUNT(FIRST_NAME), COUNT(DISTINCT FIRST_NAME) FROM EMPLOYEES; 

