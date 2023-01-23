CREATE TABLE incluye(
    Numero      INTEGER,
    Matricula   VARCHAR2(7),
    litroGas    NUMBER,
    CONSTRAINT in_numa_pk PRIMARY KEY (Numero, Matricula),
    CONSTRAINT inc_nu_fk FOREIGN KEY (Numero) REFERENCES Reserva(Numero),
    CONSTRAINT inc_ma_fk FOREIGN KEY (Matricula) REFERENCES Coche(Matricula)
);