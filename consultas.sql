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
order by 1;
 */
/* 3. Obtener los nombres y los salarios medios de los departamentos cuyo salario medio supera al salario medio de
la empresa.
 */

/*  select nomde, avg(salar) as "Salario medio"
 from departamentos D join empleados E on E.numde = D.numde
 group by nomde
 having avg(E.salar) > (SELECT avg(salar) from empleados);
 */

/*5. Para los departamentos cuyo presupuesto anual supera los 35.000 C, hallar cuantos empleados hay por cada
extensión telefónica.*/

/* select nomde, extel, count(numem)
from departamentos D join empleados E on D.numde = E.numde
where presu>35
group by extel, nomde; */

/* 6. Hallar por orden alfabético los nombres de los empleados y su número de hijos para aquellos que son directores
en funciones. */

/* select nomem, NUMHIL
from EMPLEADOS E join departamentos D on E.numde = D.numde
where numem in (select direc from departamentos where tidir = 'F')
order by nomem; */

/* 7. Hallar si hay algún departamento (suponemos que sería de reciente creación) que aún no tenga empleados
asignados ni director en propiedad.
 */

/* select nomde
from departamentos D join empleados E on D.numde = E.numde
group by nomde
having count(e.numem) = 0;
 */
--mas correcto:
/* select nomde
from departamentos
where numde NOT IN (select numde FROM EMPLEADOS); */

-- muestra los departamentos con el numero de empleado --

/* select nomde, D.numde, count(numem)
from departamentos D join empleados E on D.numde = E.numde
group by nomde, D.numde
order by count(numem);
 */
-- 10. Muestra los departamentos que no tienen empleados.

select nomde
from departamentos
where numde not in (select numde from empleados);

/*11. Muestra los nombres de departamentos que no tienen empleados haciendo uso la combinación externa LEFT
JOIN. Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente esta a
NULL. */

select nomde, nomem
from departamentos D LEFT JOIN 