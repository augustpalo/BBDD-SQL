CREATE TABLE EMPLEADO (
	ID NUMBER,
	DNI CHAR(9),
	NOMBRE VARCHAR(50),
	FECHANAC DATE,
	TELEFONO CHAR(12),
	SALARIO NUMBER,
	CODLOCALIDAD NUMBER,
	CONSTRAINT id_emp_pk PRIMARY KEY (ID),
	CONSTRAINT dni_emp_uq UNIQUE (DNI),
 	CONSTRAINT codloc_emp_fk FOREIGN KEY (CODLOCALIDAD) REFERENCES LOCALIDAD(CODLOCALIDAD)
);