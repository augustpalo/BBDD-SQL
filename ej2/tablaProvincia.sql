CREATE TABLE PROVINCIA(
	CODPROVINCIA INTEGER,
	NOMBRE VARCHAR(50),
	CODREGION NUMBER,
	CONSTRAINT provincia_codigo_pk PRIMARY KEY (CODPROVINCIA),
	CONSTRAINT provincia_codregion_fk FOREIGN KEY (CODREGION) REFERENCES REGION(CODREGION)
);