CREATE TABLE Partido(
    Codigo      INTEGER,
    Fecha       DATE,
    CodLoc      INTEGER,
    CodVis      integer,
    CONSTRAINT pa_cod_pk PRIMARY KEY (Codigo),
    CONSTRAINT pa_clo_fk FOREIGN KEY (CodLoc) REFERENCES Equipo(Codigo),
    CONSTRAINT pa_cvi_fk FOREIGN KEY (CodVis) REFERENCES Equipo(Codigo)
);