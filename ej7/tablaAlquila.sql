CREATE TABLE alquila(
    DNI             CHAR(9),
    ID_PELI         INTEGER,
    Numero          INTEGER,
    FechaAlquiler   DATE,
    FechaDevolucion DATE,
    CONSTRAINT al_dniIdpNumFAl_pk PRIMARY KEY (dni, id_peli, numero, FechaAlquiler),
    CONSTRAINT al_dni_fk FOREIGN KEY (DNI) REFERENCES Socio(DNI),
    CONSTRAINT al_idnum_fk FOREIGN KEY (ID_Peli, Numero) REFERENCES Ejemplar(ID_PELI, Numero),
    CONSTRAINT al_dmaya_ck CHECK (FechaDevolucion>FechaAlquiler)
);