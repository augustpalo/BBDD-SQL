CREATE TABLE Empleado(
	Id INTEGER,
	DNI VARCHAR2(10),
	Nombre VARCHAR(50),
	Salario NUMBER,
	Telefono varchar(10),
	IdDep INTEGER,
	CONSTRAINT emp_id_pk PRIMARY KEY (Id),
	CONSTRAINT emp_dni_uq UNIQUE (DNO)
	CONSTRAINT emp_iddep_fk FOREIGN KEY (IdDep) REFERENCES Departamento(Id)
);
	