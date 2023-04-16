-- practica 5----------------------------------------------------------------
-- 1. Obtener por orden alfabético los nombres de los empleados cuyo salario está entre 1500 C y 1600 C.-

-- SELECT NOMEM
-- FROM EMPLEADOS
-- WHERE SALAR BETWEEN 1500 AND 1600
-- ORDER BY 1;

-- 2. Obtener por orden alfabético los nombres y salarios de los empleados con comisión, cuyo salario dividido por
-- su número de hijos cumpla una, o ambas, de las dos condiciones siguientes:
    -- · Que sea inferior de 720 C
    -- · Que sea superior a 50 veces su comisión.

/* SELECT NOMEM, SALAR
FROM EMPLEADOS
WHERE (SALAR / NUMHIL < 720 AND NUMHIL != 0) OR (SALAR / NUMHIL > 50*COMIS AND (NUMHIL != 0))
AND COMIS IS NOT NULL
ORDER BY 1;
 */

--  practica 10 -------------------------------------------------------------------------------------
/* 1. Obtener por orden alfabético, los nombres y fechas de nacimiento de los empleados que cumplen años en el mes
de noviembre */
/* 
select nomem, TO_CHAR(fecna, 'DD/MM/YYYY') Nacimiento 
from EMPLEADOS
where TO_CHAR(fecna, 'MM') = '11'
ORDER BY 1; 
 */
-- 2. Obtener los nombres de los empleados que cumplen años en el día de hoy.

/* select nomem, TO_CHAR(fecna, 'DD/MM/YYYY') Nacimiento 
from EMPLEADOS
where TO_CHAR(fecna, 'DD/MM') = to_char(SYSDATE, 'DD/MM')
ORDER BY 1; */ 

/* 3. Obtener los nombres y fecha exacta de nacimiento de los empleados cuya fecha de nacimiento es anterior al año
1950.
 */

/*  select nomem fecna
 from empleados
 where to_char (fecna, 'YYYY') < 1950
 ORDER BY 1;  */

--  6. Obtener los empleados cuyo nacimiento fue en Lunes

/* select nomem, fecna
from empleados
where to_char(fecna, 'D') = 1; */

-- 7. Obtener los empleados cuyo día de la semana para el nacimiento y la incorporación fue Viernes
/* 
select nomem, to_char(fecna, 'Day') "Nacimiento"
from EMPLEADOS 
WHERE to_char(fecna, 'D') = 5 and to_char(fecin, 'D') = 5; */

-- 8. Obtener los empleados cuyo día de la semana para el nacimiento y la incorporación coinciden. Es decir nacieron
-- y se incorporaron un Lunes, o nacieron y se incorporaron un Martes, etc
/* 
select nomem, to_char(fecna, 'Day') "Nac coincide con inc"
from EMPLEADOS 
WHERE to_char(fecna, 'D') = to_char(fecin, 'D'); */

-- practica 12--------------------------------------------------------

-- 1. Hallar cuántos empleados hay en cada departamento

/* select numde, count(numem)
from EMPLEADOS
group by numde; */

-- 2. Hallar para cada departamento el salario medio, el mínimo y el máximo.

/* select numde, round(avg(salar),2), min(salar), max(salar)
from empleados
group by numde; */

-- 3. Hallar el salario medio y la edad media en años para cada grupo de empleados 
--    con igual comisión. .. note:
--La edad dependerá de la fecha en la que realicemos la consulta

/* select comis, round(avg(salar),2), round(avg((SYSDATE-fecna)/365,1))
from empleados
group by comis;
 */

/* 4. Repite la consulta anterior expresando la edad en años cumplidos. (Aunque en este caso se obtiene lo mismo, la
edad media podría variar de una consulta a otra dependiendo del momento en el que se realice la consulta). */

/* select comis, round(avg(salar),2), trunc(avg((SYSDATE-fecna)/365))
from empleados
group by comis;
 */

-- Practica 13

-- 5. Hallar el maximo de la suma de los salarios de todos los departamentos

/* select numde, sum(salar)
from empleados
group by numde
HAVING sum(salar) >= ALL
                    (select sum(salar)
                    from empleados
                    group by numde); */


-- Practica 14

/* 1.  Para cada departamento con presupuesto inferior a 35.000 C, hallar le nombre del Centro donde está ubicado
y el máximo salario de sus empleados (si dicho máximo excede de 1.500 C). Clasificar alfabéticamente por
nombre de departamento. */ 

/* 2. Hallar por orden alfabético los nombres de los departamentos que dependen de los que tienen un presupuesto
inferior a 30.000 C. También queremos conocer el nombre del departamento del que dependen y su presupuesto.
 */

/* select D1.nomde as "Dept.", D2.nomde as "Dept. del que depende", D2.presu as "Presu."
from departamentos D1 JOIN departamentos D2 ON D1.depde = D2.numde
WHERE D1.depde in (select numde from departamentos where presu < 30)
order by 1; */

/* 3. Obtener los nombres y los salarios medios de los departamentos cuyo salario medio supera al salario medio de
la empresa.
 */

 /* select nomde, avg(salar) as "Salario medio"
 from departamentos D join empleados E on E.numde = D.numde
 group by nomde
 having avg(E.salar) > (SELECT avg(salar) from empleados); */

/* 4. Para los departamentos cuyo director lo sea en funciones, hallar el número de empleados y la suma de sus
salarios, comisiones y número de hijos. */

--8. Añadir un nuevo departamento de nombre NUEVO y con director en funciones.
/* insert into departamentos 
values (300,10,180,'F',10,110,'Nuevo'); */

--9. Añadir un nuevo empleado de nombre NORBERTO y sin departamento asignado. Inventar el resto de datos.
/* insert into empleados(numem,nomem)
values(600,'Norberto'); */ 

-- 15 Muestra los departamentos que no tienen empleados y los empleados que no tiene departamento haciendo uso
-- la combinación externa FULL JOIN.

/* select nomde, nomem
from departamentos D FULL JOIN EMPLEADOS E ON D.NUMDE = E.NUMDE
WHERE D.NUMDE IS NULL OR E.NUMEM IS NULL; */

--18. Muestra los empleados y sus respectivos departamentos haciendo uso de la combinación interna NATURAL JOIN
/* select nomde, nomem
from departamentos natural join empleados; */

--19 Muestra la combinación de las 3 tablas CENTROS, DEPARTAMENTOS y EMPLEADOS haciendo uso de NATURAL JOIN.
/* select * 
from centros natural join departamentos natural join empleados;
 */

