CREATE TABLE alumnos(
	id_alumno		integer primary key,
	nombre			varchar2(30),
	fecha_nacimiento	date);

CREATE TABLE matriculaciones(
	id_alumno		integer,
	id_asignatura		integer primary key,
	fecha_matriculacion	date);

ALTER TABLE matriculaciones ADD(
	CONSTRAINT fk_mat_alu foreign key (id_alumno) references alumnos(id_alumno));

ALTER TABLE alumnos ADD(
	email			varchar2(30));

ALTER TABLE alumnos MODIFY(
	email			varchar2(30) NOT NULL UNIQUE);

ALTER TABLE alumnos DROP COLUMN email;

ALTER TABLE alumnos ADD(
	email			varchar2(30) NOT NULL UNIQUE);

INSERT INTO alumnos(id_alumno, nombre, fecha_nacimiento, email)
	    VALUES(100,'Juan Perez','15/06/2005','juan.perez@example.com');

UPDATE alumnos SET nombre='Juan Perez Garcia' WHERE id_alumno=100;
UPDATE alumnos SET email='juan.perez.garcia@example.com' WHERE id_alumno=100;

DELETE alumnos where id_alumno = 100;