CREATE TABLE Pelicula(
    ID              INTEGER,
    Titulo          VARCHAR2(20),
    Productora      VARCHAR2(20),
    Nacionalidad    VARCHAR2(20),
    Fecha           DATE,
    Director        VARCHAR2(20),
    CONSTRAINT pe_id_pk PRIMARY KEY (ID),
    CONSTRAINT pe_dir_fk FOREIGN KEY (Director) REFERENCES Director(Nombre)
);