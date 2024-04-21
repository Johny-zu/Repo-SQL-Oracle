CONN SYSTEM/<PASSWORD>;
CON HR/HR;

-- Comenzamos con las funciones
CREATE OR REPLACE FUNCTION FN_SALARIOS(PROD NUMERIC) RETURN NUMBER IS
RESULT NUMBER;
BEGIN
SELECT SALARY INTO RESULT FROM EMPLOYEES WHERE EMPLOYEE_ID = PROD;
RETURN(RESULT);
EXCEPTION WHEN NO_DATA_FOUND THEN RETURN 0;
END;
/

DECLARE 
R NUMBER;
BEGIN
R := FN_SALARIOS(1);
DBMS_OUTPUT.PUT_LINE('El salario es: ' || R || ' pesos');
END;
/
