CREATE TABLE actua(
    Actor   VARCHAR2(20),
    ID_Peli INTEGER,
    Prota   CHAR(2),
    CONSTRAINT ac_actidp_pk PRIMARY KEY (Actor, ID_Peli),
    CONSTRAINT ac_act_fk FOREIGN KEY (Actor) REFERENCES Actores(Nombre),
    CONSTRAINT ac_idp_fk FOREIGN KEY (ID_Peli) REFERENCES Pelicula(ID),
    CONSTRAINT nn_nn_ck CHECK (Prota in ('si', 'no'))
);