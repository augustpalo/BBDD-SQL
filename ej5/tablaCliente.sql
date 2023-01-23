CREATE TABLE Cliente(
    CodCliente  INTEGER,
    DNI         VARCHAR2(9),
    Nombre      VARCHAR2(50) NOT NULL,
    Direccion   VARCHAR2(50),
    Telefono    VARCHAR2(10),
    CONSTRAINT cli_cod_pk PRIMARY KEY (CodCliente),
    CONSTRAINT cli_dni_uq UNIQUE (DNI)
);