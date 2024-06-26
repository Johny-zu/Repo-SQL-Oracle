CONN SYSTEM/<PASSWORD>

CONN HR/HR

-- Comencemos con el aparteado de subconsultas en sql

/*Selecionamos nombre de empleados donde el id sea igual al id de la del empleado*/
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE JOB_ID = (SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID = 100);

/*
En esta consulta seleccionamos el primer nombre, apellido y salario de la tabla de 
empleados donde el salario sea mayor que el salario de la tabla de empleados con el 
id del trabajador 180 y ordenaremos por slario
*/

SELECT FIRST_NAME, LAST_NAME SALARY FROM EMPLOYEES
WHERE SALARY > (SELECT SALARY FROM EMPLOYEES WHERE EMPLOYEE_ID = 180)
ORDER BY SALARY;


-- Doble subsconsulta
SELECT FIRST_NAME, DEPARTMENT_ID, SALARY FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM EMPLOYEES
WHERE EMPLOYEE_ID = 100) AND SALARY > (SELECT SALARY FROM EMPLOYEES
WHERE EMPLOYEE_ID = 180) ORDER BY SALARY;

SELECT FIRST_NAME, JOB_ID, SALARY FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

SELECT JOB_ID, MIN(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID
HAVING MIN(SALARY) > (SELECT MIN(SALARY) FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60);

SELECT FIRST_NAME, SALARY, JOB_ID FROM EMPLOYEES
WHERE SALARY IN (SELECT MIN(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID);

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = 'AD_ASST')
ORDER BY SALARY;

-- usar alguien de referencia excluyendo a esa refrencia 
SELECT LAST_NAME, HIRE_DATE FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM EMPLOYEES
WHERE LAST_NAME = 'Zlotkey') AND LAST_NAME <> 'Zoltkey'
ORDER BY LAST_NAME;

SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM DEPARTMENTS 
WHERE LOCATION_ID = 1700);

SELECT DEPARTMENT_ID, LAST_NAME, JOB_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM DEPARTMENTS
WHERE DEPARTMENT_NAME =  'Executive');

SELECT EMPLOYEE_ID, LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);