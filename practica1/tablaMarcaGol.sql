CREATE TABLE marcaGol(
    Partido     INTEGER,
    Jugador     INTEGER,
    Minuto      INTEGER,
    DESCRIPTION VARCHAR2(255),
    CONSTRAINT mg_parjug_pk PRIMARY KEY (Partido, Jugador),
    CONSTRAINT mg_par_fk FOREIGN KEY (Partido)  REFERENCES Partido(Codigo),
    CONSTRAINT mg_jug_fk FOREIGN KEY (Jugador)  REFERENCES Jugador(Codigo),
    );