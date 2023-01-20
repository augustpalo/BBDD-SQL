CREATE TABLE monta(
    Modelo INTEGER,
    NIF_M CHAR(9),
    FechaMontaje DATE,
    CONSTRAINT mon_modniffech_pk PRIMARY KEY (Modelo, NIF_M,FechaMontaje),
    CONSTRAINT mom_mod_fk FOREIGN KEY (Modelo) REFERENCES ModeloDormitorio(Codigo),
    CONSTRAINT mon_nif_fk FOREIGN KEY (NIF_M) REFERENCES Montador(NIF)
);