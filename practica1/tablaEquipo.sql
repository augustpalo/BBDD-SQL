CREATE TABLE Equipo(
    Codigo      INTEGER,
    Nombre      VARCHAR2(20),
    Estadio     VARCHAR2(20),
    Ciudad      VARCHAR2(20),
    Aforo       INTEGER,
    Presidente  CHAR(9),
    CONSTRAINT eq_cod_pk PRIMARY KEY (Codigo),
    CONSTRAINT nn_nn_fk FOREIGN KEY (Presidente) REFERENCES Presidente(DNI)
);