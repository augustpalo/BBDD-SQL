create table Recibe(
	NumMatricula	char(5) references Alumno(NumMatricula),
	CodAsignatura	number references Asignatura(CodAsignatura),
	CursoEscolar	varchar(10) primary key
);