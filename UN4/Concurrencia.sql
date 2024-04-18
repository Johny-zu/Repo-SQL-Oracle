CONN system/<password>
CONN HR/HR;

SET AUTOCOMMIT OFF;

CREATE TABLE REGIONS2(
    REGION2_ID NUMBER(5) NOT NULL,
    REGION_NAME VARCHAR(30),
    CONSTRAINT PK_REGION2_ID PRIMARY KEY(REGION2_ID)
);

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(1, 'Noroeste');

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(2, 'Noreste');

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(3, 'Centro norte');

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(4, 'Oeste');

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(5, 'Centro sur');

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(6, 'Este');

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(7, 'Suroeste');

INSERT INTO REGIONS2(REGION2_ID, REGION_NAME)
VALUES(8, 'Sureste');

COMMIT; --sirve para que la transaccion sea completada de manera crrecta y conecte los cambios

/*Usa nivel de islamiento serializable para la sesion actual
el nivel de islamiento se aplica a todas las transacciones iniciadas en la sesion que se cambie*/
ALTER SESSION SET ISOLATION_LEVEL = SERIALIZABLE;

/*Usa nivel de aislamiento solo para la transaccion actual 
se aplica a la actual y no afecta otras transacciones en la misma sesion*/
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

