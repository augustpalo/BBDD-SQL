CREATE TABLE tablaAvala(
    Avalado     INTEGER,
    Avalador    INTEGER,    
    CONSTRAINT av_avo_pk PRIMARY KEY (Avalado),
    CONSTRAINT av_avo_fk FOREIGN KEY (Avalado) REFERENCES Cliente(CodCliente),
    CONSTRAINT av_avr_fk FOREIGN KEY (Avalador) REFERENCES Cliente(CodCliente)
);