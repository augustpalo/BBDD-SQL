CREATE TABLE usuarios (
id NUMBER CONSTRAINT usu_id_pk PRIMARY_KEY,
dni CHAR(9) CONSTRAINT usu_dni_uq UNIQUE,
nombre VARCHAR(50) CONSTRAINT usu_nom_nn NOT NULL,
edad NUMBER CONSTRINT usu_edad_ck CHECK (edad>=0 and edad<120)
);