create view promedio as(
	select avg(creditos), id_profesor
	from asignaturos asi join imparticiones imp on asi.id_asignatura=imp.id_asignatura
				join profesores pro on pro.id_asignatura=imp.id_profesor;