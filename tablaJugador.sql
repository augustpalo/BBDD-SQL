CREATE TABLE Jugador(
    Codigo      INTEGER PRIMARY KEY,
    Nombre      VARCHAR2(20),
    Posicion     VARCHAR2(20),
    fNacimiento DATE,
    CONSTRAINT ju_pos_ck CHECK (Posicion IN('Delantero','Portero','Defensa','Centrocampista'))
);