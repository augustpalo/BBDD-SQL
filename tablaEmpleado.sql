CREATE TABLE Empleado(
    DNI             CHAR(9),
    Nombre          VARCHAR2(50),
    Direccion       VARCHAR2(20),
    Telefono        VARCHAR2(15),
    Sucursal        INTEGER,
    CONSTRAINT em_dni_pk PRIMARY KEY (DNI)
    CONSTRAINT em_dni_fk FOREIGN KEY (Sucursal) REFERENCES Sucursal(Codigo)
)