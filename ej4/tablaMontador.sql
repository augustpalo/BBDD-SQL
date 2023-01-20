CREATE TABLE Montador(
    NIF         CHAR(9),
    Nombre      VARCHAR2(50),
    Direccion   VARCHAR2(50),
    Telefono    VARCHAR2(12),
    CONSTRAINT  mon_nif_pk PRIMARY KEY (NIF)
);