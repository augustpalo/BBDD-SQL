-- @block
 /*8. En una campaña de ayuda familiar se ha decidido dar a los empleados una paga extra de 60 C por hijo, a partir
del cuarto inclusive. Obtener por orden alfabético para estos empleados: nombre y salario total que van a cobrar
incluyendo esta paga extra. Mostrarlo como en la imagen */

SELECT NOMEM, SALAR+60*(NUMHIJ-3) AS "salarioTotal"
FROM EMPLEADOS
WHERE NUMHIJ < 3
ORDER BY NOMEM;

-- @block
/* 9. Introducción a SELECT subordinado. Imaginemos la misma consulta anterior, pero en la que se nos pide mostrar
los mismos campos pero para aquellos empleados cuyo número de hijos iguale o supere a los de Juliana. Es decir,
Juliana tiene 4 hijos pero no lo sabemos. Lo que sabemos es el nombre. En este caso haremos otro SELECT
cuyo resultado de la búsqueda sea el número de hijos de Juliana. */

SELECT NOMEM, SALAR+60*(NUMHIJ-3) AS "salarioTotal"
FROM EMPLEADOS
WHERE NUMHIJ <= 
                (SELECT NUMHIJ FROM EMPLEADOS WHERE NOMEM = 'JULIANA')
ORDER BY NOMEM;

-- @block
/* 10. Obtener por orden alfabético los nombres de los empleados cuyos sueldos igualan o superan al de CLAUDIA
en más del 15 %. */

SELECT NOMEM
FROM EMPLEADOS
WHERE SALARIO >=
                (SELECT SALAR*1.15 FROM EMPLEADOS WHERE NOMEM = 'CLAUDIA' )
ORDER BY NOMEM;