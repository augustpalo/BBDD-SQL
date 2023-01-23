CREATE TABLE Reserva(
    Numero      INTEGER,
    FechaInicio DATE,
    FechaFin    DATE,
    PrecioTotal NUMBER,
    CodCliente  INTEGER,
    CONSTRAINT cli_num_pk PRIMARY KEY (Numero),
    CONSTRAINT cli_cod_fk FOREIGN KEY (CodCliente) REFERENCES Cliente(CodCliente)
);