CREATE TABLE EJEMPLAR(
    ID_PELI INTEGER,
    NUMERO INTEGER,
    ESTADO VARCHAR2(50),
    CONSTRAINT EJ_IDPNUM_PK PRIMARY KEY (ID_PELI, NUMERO),
    CONSTRAINT NN_NN_FK FOREIGN KEY (ID_PELI) REFERENCES PELICULA(ID)
);