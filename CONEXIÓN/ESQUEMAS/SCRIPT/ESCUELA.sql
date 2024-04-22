CREATE TABLE ALUMNOS (
  NUM_CONTROL NUMERIC(8) NOT NULL,
  NOMBRE VARCHAR(30) NULL,
  APELLIDOP VARCHAR(20) NULL,
  APELLIDOM VARCHAR(20) NULL,
  CORREO VARCHAR(30) NULL,
  CONSTRAINT PK_ALUMNOS PRIMARY KEY(NUM_CONTROL)
);

CREATE TABLE MATERIAS (
  ID_MATERIA INTEGER(3) UNSIGNED NOT NULL,
  NOMBRE VARCHAR(20) NULL,
  CREDITOS VARCHAR(2) NULL,
  DESCRICPCION VARCHAR(30) NULL,
  CONSTRAINT PK_MATERIAS PRIMARY KEY(ID_MATERIA)
);

CREATE TABLE CALIFICACIONES (
  NUM_CONTROL NUMERIC(8) NOT NULL,
  ID_MATERIA INTEGER(3) UNSIGNED NOT NULL,
  CALIFICACION INTEGER(2) UNSIGNED NULL,
  PRIMARY KEY(NUM_CONTROL, ID_MATERIA)
);

CREATE TABLE PROFESORES (
  MATRICULA NUMERIC(5) NOT NULL,
  NOMBRE VARCHAR(20) NULL,
  APELLIDOP VARCHAR(20) NULL,
  APELLIDOM VARCHAR(20) NULL,
  CORREO VARCHAR(30) NULL,
  CONSTRAINT PK_PROFESORES PRIMARY KEY(MATRICULA)
);

CREATE TABLE PROFESORESMATERIAS (
  IDPROFMAT INTEGER(3) UNSIGNED NOT NULL,
  ID_MATERIA INTEGER(3) UNSIGNED NOT NULL,
  MATRICULA NUMERIC(5) NOT NULL,
  CONSTRAINT PK_PROFESORESMATERIAS PRIMARY KEY(IDPROFMAT)
);