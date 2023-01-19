create table asignatura (
	codasignatura	number primary key,
	nombre		varchar(20),
	idprofesor	number references profesor(idprofesor)
);