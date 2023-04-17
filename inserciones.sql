-- Inserta dos directores:
INSERT INTO DIRECTOR VALUES ('Pedro Martin', 'España');
INSERT INTO DIRECTOR VALUES ('Pierre Martin', 'Francia');

-- Inserta 4 películas. Todas ellas están dirigidas por alguno de los directores anteriores:
INSERT INTO PELICULA VALUES(1, 'Señor de los arillos', '2nd century fox', 'España', '12/4/2000', 'Pedro Martin');

-- Cambia la nacionalidad para los directores. Por ejemplo de “Estadounidense” a “USA” o similar,
-- dependiendo de los valores que hayas introducido.

UPDATE DIRECTOR SET NACIONALIDAD = 'ESP' WHERE NACIONALIDAD = 'España';

-- Modifica los datos de todos los socios para que el avalista sea un único socio, siempre el mismo
-- para todos, excepto para el avalista mismo que no dispone de ninguno.

UPDATE SOCIO SET AVALADOR = '12345678A' WHERE DNI != '12345678A';

-- Elimina los socios cuyo número de teléfono empiece por una cifra inferior a 5. ¿Qué sucede?¿Por
-- qué?

DELETE SOCIO WHERE REGEXP_LIKE(TELEFONO, '[0-4]*');