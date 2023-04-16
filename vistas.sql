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