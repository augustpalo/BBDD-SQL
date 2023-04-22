CREATE TABLE CENTROS(
    numce       INTEGER PRIMARY KEY,
    nomce       VARCHAR2(50),
    dirce       VARCHAR2(50)
);

CREATE TABLE EMPLEADOS(
    numem       INTEGER PRIMARY KEY,
    extel       Integer,
    fecna       DATE,
    fecin       DATE,
    salar       NUMBER,
    comis       NUMBER,
    numhij      INTEGER,
    nomem       VARCHAR2(20),
    numde       INTEGER
);

CREATE TABLE DEPARTAMENTOS(
    numde       INTEGER PRIMARY KEY,
    numce       INTEGER,
    direc       VARCHAR2(20),
    tidir       VARCHAR2(10),
    presu       NUMBER,
    depde       INTEGER,
    nomde       VARCHAR2(30)
);