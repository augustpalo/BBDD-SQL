CREATE TABLE compra(
    NIF_C       VARCHAR2(9),
    Modelo      INTEGER,
    FechaCompra DATE,
    CONSTRAINT com_nifmodfech_pk PRIMARY KEY (NIF_C,Modelo,FechaCompra),
    CONSTRAINT com_nif_fk FOREIGN KEY (NIF_C) REFERENCES Cliente(NIF),
    CONSTRAINT com_mod_fk FOREIGN KEY (Modelo) REFERENCES ModeloDormitorio(Codigo)
);