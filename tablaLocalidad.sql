CREATE TABLE LOCALIDAD(
	CODLOCALIDAD NUMBER,
	NOMBRE VARCHAR,
	CODPROVINCIA NUMBER,

	CONSTRAINT PRIMARY KEY (CODLOCALIDAD),
	CONSTRAINT FOREIGN KEY (CODPROVINCIA) REFERENCES PROVINCIA(CODPROVINCIA)
);