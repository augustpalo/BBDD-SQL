CREATE TABLE Socio(
    DNI             CHAR(9),
    Nombre          VARCHAR2(50),
    Direccion       VARCHAR2(20),
    Telefono        VARCHAR2(15),
    Avalador        CHAR(9),
    CONSTRAINT so_dni_pk PRIMARY KEY (DNI),
    CONSTRAINT so_ava_fk FOREIGN KEY (Avalador) REFERENCES Socio(DNI)
);