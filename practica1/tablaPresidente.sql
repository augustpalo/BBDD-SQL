CREATE TABLE Presidente(
    DNI             CHAR(9),
    Nombre          VARCHAR2(50),
    fEleccion       DATE,
    fNacimiento     DATE,
    CONSTRAINT pr_dni_pk PRIMARY KEY (DNI)
);