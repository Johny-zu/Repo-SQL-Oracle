CONN system/<password>

-- Creamos un nuevo perfil 
CREATE PROFILE CLERK LIMIT --CREAMOS UN PERFIL CON UN LIMITE 
SESSIONS_PER_USER 1 --LIMITA EL NUMERO DE SESIONES SIMULTANEAS
IDLE_TIME 30 --TIEMPO LIMITE DE INACTIVIDAD 
CONNECT_TIME 600; --TIEMPO LIMITE DE ACTIVIDAD

CREATE USER JOHNY IDENTIFIED BY LTC 
DEFAULT TABLESPACE USERS --crea un area de trabajo predeterminado 
TEMPORARY TABLESPACE USERS --crea la tabla temporal 
QUOTA SK ON USERS --declare el limite de espacio para trabajar del usuario
PROFILE CLERK; --al usuario para establecer ciertos límites y restricciones en su uso de la base de datos.



