CREATE TABLE Revista(
    NumReg          INTEGER,
    Titulo          VARCHAR2(20) NOT NULL,
    Periodicidad    VARCHAR2(40) DEFAULT 'MENSUAL',
    Tipo            VARCHAR2(10),
    Sucursal        INTEGER,
    CONSTRAINT re_num_pk PRIMARY KEY (NumReg),
    CONSTRAINT re_su_fk FOREIGN KEY (Sucursal) REFERENCES Sucursal(Codigo),
    CONSTRAINT re_per_ck CHECK (Periodicidad IN ('SEMANAL', 'QUINCENAL', 'MENSUAL', 'TRIMESTRAL', 'ANUAL'))
);