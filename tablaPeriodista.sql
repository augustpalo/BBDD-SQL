CREATE TABLE Periodista(
    DNI             CHAR(9),
    Nombre          VARCHAR2(50),
    Direccion       VARCHAR2(20),
    Telefono        VARCHAR2(15),
    Especialista    VARCHAR2(20),
    CONSTRAINT pe_dni_pk PRIMARY KEY (DNI)
);