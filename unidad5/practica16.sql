/* /* 1. Selecciona, por orden alfabético decreciente, el nombre de los empleados junto con su salario aumentado un
1 %, para aquellos empleados del departamento 100 que en la fecha de su contratación tenían más de 20 años. 

select nomem, salar*1.1
from empleados
where numde = 100 and (fecin-fecna)/365 > 20
order by 1 desc;

-- 2. Para cada Centro selecciona el presupuesto medio de los departamentos que tienen su sede en él

select numce, avg(presu)
from departamento
group by numce;
 */
/* 3. Selecciona el nombre de los empleados junto con su edad actual para aquellos empleados que trabajan en el
departamento de PERSONAL. */
/* 
select nomem, trunc((sysdate-fecna)/365) as "edad"
from empleados E join DEPARTAMENTOS d on e.numde = d.numde
where d.nomde = 'PERSONAL'; */
/* 
4. Selecciona la dirección del centro donde están ubicados los departamentos que tiene empleados con más de tres
hijos. Deberás mostrar también el nombre de dichos departamentos. */

/* select dirce, nomde
from departamentos d join centros C on c.numce = d.numce
                    join empleados e on e.numde = d.numde
where numhij > 3; */

/*5. Selecciona la dirección del centro donde están ubicados los departamentos si existe alguno que tiene empleados
con más de tres hijos. Deberás mostrar también el nombre de dichos departamentos. */

/* select dirce, d.numde, numhij
from departamentos d join centros c on c.numce = d.numce    
                    join empleados e on e.numde = d.numde
where exists (
                select * from empleados where numhij > 3
); */

/* 6. Cuenta el número de empleados que tienen el mismo número de hijos. Deberás mostrar también el número de
hijos que corresponde en cada caso. */

/* select count(numem), numhij
from EMPLEADOS
group by numhij
order by 2 desc; */

/* 7. Crea una vista llamada “Sin comisión” donde muestres el nombre, la edad y el salario de los empleados que
no tienen comisión. El salario deberá aparecer en la consulta seguido de “C” y el nombre del campo en el que
aparezca la edad será “Edad actual”. */

create view SinComision as
    select nomem, trunc((sysdate-fecna)/365) as edad, salar || ' €' as salar
    from empleados
    where comis is NULL;


