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

select nomem, to_char(fecna, 'Day') "Nac coincide con inc"
from EMPLEADOS 
WHERE to_char(fecna, 'D') = to_char(fecin, 'D');