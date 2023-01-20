CREATE TABLE Cliente(
    NIF         VARCHAR2(9),
    Nombre      VARCHAR2(50),
    Direccion   VARCHAR2(50),
    Telefono    VARCHAR2(10),
    CONSTRAINT cli_nif_pk PRIMARY KEY (NIF)
);