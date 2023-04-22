-- 1.   Obtener una relación por orden alfabético de los departamentos cuyo presupuesto es inferior a 30.000 C El
--      nombre de los departamentos vendrá precedido de las palabras “DEPARTAMENTO DE “. Nota: El presupuesto
--      de los departamentos viene expresado en miles de C.

-- SELECT 'Departamento de ' || NOMDE "Nombre"
-- from DEPARTAMENTOS
-- WHERE presu < 30
-- order by "Nombre";

-- 2.   Muestra el número y el nombre de cada departamento separados por un guión y en un mismo campo llamado
--      “Número-Nombre”, además del tipo de director mostrado como “Tipo de Director”, para aquellos departamentos
--      con presupuesto inferior a 30.000 C.

-- SELECT NUMDE || ' - ' || NOMDE as "Numero-Nombre", 
-- TIDIR as "Tipo Director"
-- from DEPARTAMENTOS
-- WHERE presu < 30
-- order by 1;

-- 3.  Suponiendo que en los próximos dos años el coste de vida va a aumentar un 8 % anual y que se suben los salarios
-- solo un 2 % anual, hallar para los empleados con más de 4 hijos su nombre y su sueldo anual, actual y para cada
-- uno de los próximos dos años, clasificados por orden alfabético. Muestra la consulta tal y como aparece en la
-- captura.

-- SELECT NOMEM "Nombre", salar*12 "Salario 2014", salar*12*1.12 "Salario 2015", salar*12*1.02*1.02
-- FROM EMPLEADOS
-- WHERE NUMHIL > 4
-- ORDER BY 1;

-- 4. Hallar, por orden alfabético, los nombres de los empleados tales que si se les da una gratificación de 120 C por
-- hijo, el total de esta gratificación supera el 20 % de su salario.

-- select nomem "Emplead@"
-- FROM EMPLEADOS
-- WHERE 120*NUMHIL > SALAR*0.2
-- ORDER BY 1;

-- 5. . Para los empleados del departamento 112 hallar el nombre y el salario total (salario más comisión), por orden
-- de salario total decreciente, y por orden alfabético dentro de salario total.

--     SELECT NOMEM "NOMBRE EMPLEADO", SALAR+COMIS "SALARIO TOTAL"
--     FROM EMPLEADOS
--     WHERE NUMDE=112
--     ORDER BY 2 DESC, 1 ASC;

-- 6. Vemos que para Micaela no se muestra nada en Salario Total, esto es debido a que su comisión es Nula (Lo
-- que no significa que sea 0–> significa que no se ha introducido ningún valor). Esto impide hacer el cálculo de
-- la suma. Muestra entonces la misma consulta anterior pero sólo para aquellos empleados cuya comisión no sea
-- nula.

    -- SELECT NOMEM "NOMBRE EMPLEADO", SALAR+COMIS "SALARIO TOTAL"
    -- FROM EMPLEADOS
    -- WHERE NUMDE=112 AND COMIS IS NOT NULL
    -- ORDER BY 2 DESC, 1 ASC;
-- @block
-- 7. Repite la consulta anterior para mostrarla como sigue:

    -- SELECT NOMEM "NOMBRE EMPLEADO", SALAR+COMIS || ' €' "SALARIO TOTAL"
    -- FROM EMPLEADOS
    -- WHERE NUMDE=112 AND COMIS IS NOT NULL
    -- ORDER BY 2 DESC, 1 ASC;

-- @block
-- 8.En una campaña de ayuda familiar se ha decidido dar a los empleados una paga extra de 60 C por hijo, a partir
-- del cuarto inclusive. Obtener por orden alfabético para estos empleados: nombre y salario total que van a cobrar
-- incluyendo esta paga extra. Mostrarlo como en la imagen.

    SELECT NOMEM "NOMBRE", SALAR+60(NUMHIL-3) "SALARIO TOTAL"
    FROM EMPLEADOS
    WHERE NUMHIL >= 4
    ORDER BY 1;
