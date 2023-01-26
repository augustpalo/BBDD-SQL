CREATE TABLE NumRevista(
    NumReg          INTEGER,
    Numero          INTEGER,
    NumPaginas      INTEGER,
    Fecha           DATE,
    CantVendidas    INTEGER,
    CONSTRAINT nn_nn_pk PRIMARY KEY (NumReg, Numero),
    CONSTRAINT nn_nn_fk FOREIGN KEY (NumReg) REFERENCES Revista(NumReg)
);