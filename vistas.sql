--Practica 15-----------------------------------------------------------------------------------------------------
/* 1. Crear una vista con todos los empleados del departamento 111 en donde figuren solo el número de empleado,
su nombre, su salario y la comisión. La llamarás VISTA1. */

/* create view Vista1 as
    select numem, nomem, salar, comis
    from empleados
    where numde = 111;
 */

/* 2. Crear una vista que obtenga el máximo valor de la suma de los salarios de los departamentos. Se llamará
VISTA2. */

/* create view vista2 as
    select numde, sum(salar) as "Sum_Max_Salar"
    from empleados
    group by numde
    having sum(salar) = 
        (select max(sum(salar)) from empleados group by numde);
    
    select * from vista2; */

-- 3. Utilizar la vista anterior para obtener el departamento con más gasto en salario.

--select numde from vista2;

/* 4. Utilizar la VISTA1 para obtener por orden alfabético los nombres de los empleados del departamento 111 que
tienen comisión. */

/* select nomem 
from Vista1
where comis is not NULL
order by 1; */

-- 5. Insertar la siguiente fila en la VISTA1: (999,”RODOLFO”,999,999). ¿Qué consecuencias tiene?

-- insert into Vista1 values(999, 'Rodolfo', 999, 999);

-- 6. Borra la fila anterior.

-- delete from empleados where numem=999;

-- 7. Crear una VISTA3 en la que aparezcan los centros con sus departamentos.

/* create view VISTA3 AS
SELECT NOMDE, NOMCE 
FROM DEPARTAMENTOS D JOIN CENTROS C ON D.NUMCE=C.NUMCE;
 */

 /* 10. Crea una vista con el nombre “Jubilación” donde muestres el nombre de cada empleado, el nombre del departa-
mento en el que trabajan, su edad y su salario para aquellos cuya edad sea, al menos, de 60 años.
 */

/* CREATE VIEW JUBILACION AS   
    SELECT NOMEM, NOMDE, TRUNC((SYSDATE-FECNA)/365) AS EDAD , salar
    FROM EMPLEADOS E JOIN DEPARTAMENTOS D ON E.NUMDE=D.NUMDE
    WHERE (SYSDATE-FECNA)/365>=60;
 */
-- SELECT * FROM JUBILACION; 

-- 11. Utiliza la vista anterior para mostrar el nombre de los empleados que tienen justo 60 años.

/* select nomem
from JUBILACION
where EDAD = 60; */

/* 12. Muestra la dirección de los centros, el nombre de los empleados que trabajan en él, el nombre del departamento
concreto en el que trabajan y quien es el director de dicho departamento para aquellos empleados cuyo nombre
comience por la letra “J”. */

/* select dirce, nomem, nomde, DIREC
from DEPARTAMENTOS D join empleados E on D.numde=E.numde
               join CENTROS C on D.NUMCE=C.NUMCE
WHERE NOMEM LIKE 'J%'; */