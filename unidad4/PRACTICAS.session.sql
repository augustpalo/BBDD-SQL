-- @block
CREATE TABLE CENTROS(
    numce       INTEGER PRIMARY KEY,
    nomce       VARCHAR(50),
    dirce       VARCHAR(50)
);

-- @block
SELECT * from CENTROS;

-- @block
CREATE TABLE EMPLEADOS(
    numem       INTEGER PRIMARY KEY,
    extel       Integer,
    fecna       DATE,
    fecin       DATE,
    salar       double,
    comis       double,
    numhil      INTEGER,
    nomem       varchar(20),
    numde       INTEGER
);
-- @block
CREATE TABLE DEPARTAMENTOS(
    numde       INTEGER PRIMARY KEY,
    numce       INTEGER,
    direc       varchar(20),
    tidir       varchar(10),
    presu       double,
    depde       INTEGER,
    nomde       varchar(30)
);

-- @block
INSERT INTO EMPLEADOS (numem, extel, fecna, fecin, salar, comis, numhil, nomem, numde)
    WITH p AS (
        SELECT 110,350,STR_TO_DATE('1970-11-10','%Y-%m-%d'),STR_TO_DATE('1985-02-15','%Y-%m-%d'),1800,NULL,3,'CESAR',121 FROM dual UNION ALL
        SELECT 120,840,STR_TO_DATE('1968-06-09','%Y-%m-%d'),STR_TO_DATE('1988-10-01','%Y-%m-%d'),1900,110,1,'MARIO',112 FROM dual UNION ALL
        SELECT 130,810,STR_TO_DATE('1965-09-09','%Y-%m-%d'),STR_TO_DATE('1981-02-01','%Y-%m-%d'),1500,110,2,'LUCIANO',112 FROM dual UNION ALL
        SELECT 150,340,STR_TO_DATE('1972-08-10','%Y-%m-%d'),STR_TO_DATE('1997-01-15','%Y-%m-%d'),2600,NULL,0,'JULIO',121 FROM dual UNION ALL
        SELECT 160,740,STR_TO_DATE('1980-07-09','%Y-%m-%d'),STR_TO_DATE('2005-11-11','%Y-%m-%d'),1800,110,2,'AUREO',111 FROM dual UNION ALL
        SELECT 180,508,STR_TO_DATE('1974-10-18','%Y-%m-%d'),STR_TO_DATE('1996-03-18','%Y-%m-%d'),2800,50,2,'MARCOS',110 FROM dual UNION ALL
        SELECT 190,350,STR_TO_DATE('1972-05-12','%Y-%m-%d'),STR_TO_DATE('1992-02-11','%Y-%m-%d'),1750,NULL,4,'JULIANA',121 FROM dual UNION ALL
        SELECT 210,200,STR_TO_DATE('1970-09-28','%Y-%m-%d'),STR_TO_DATE('1999-01-22','%Y-%m-%d'),1910,NULL,2,'PILAR',100 FROM dual UNION ALL
        SELECT 240,760,STR_TO_DATE('1967-02-26','%Y-%m-%d'),STR_TO_DATE('1989-02-24','%Y-%m-%d'),1700,100,3,'LAVINIA',111 FROM dual UNION ALL
        SELECT 250,250,STR_TO_DATE('1976-10-27','%Y-%m-%d'),STR_TO_DATE('1997-03-01','%Y-%m-%d'),2700,NULL,0,'ADRIANA',100 FROM dual UNION ALL
        SELECT 260,220,STR_TO_DATE('1973-12-03','%Y-%m-%d'),STR_TO_DATE('2001-07-12','%Y-%m-%d'),720,NULL,6,'ANTONIO',100 FROM dual UNION ALL
        SELECT 270,800,STR_TO_DATE('1975-05-21','%Y-%m-%d'),STR_TO_DATE('2003-09-10','%Y-%m-%d'),1910,80,3,'OCTAVIO',112 FROM dual UNION ALL
        SELECT 280,410,STR_TO_DATE('1978-01-10','%Y-%m-%d'),STR_TO_DATE('2010-10-08','%Y-%m-%d'),1500,NULL,5,'DOROTEA',130 FROM dual UNION ALL
        SELECT 285,620,STR_TO_DATE('1979-10-25','%Y-%m-%d'),STR_TO_DATE('2011-02-15','%Y-%m-%d'),1910,NULL,0,'OTILIA',122 FROM dual UNION ALL
        SELECT 290,910,STR_TO_DATE('1967-11-30','%Y-%m-%d'),STR_TO_DATE('1988-02-14','%Y-%m-%d'),1790,NULL,3,'GLORIA',120 FROM dual UNION ALL
        SELECT 310,480,STR_TO_DATE('1976-11-21','%Y-%m-%d'),STR_TO_DATE('2001-01-15','%Y-%m-%d'),1950,NULL,0,'AUGUSTO',130 FROM dual UNION ALL
        SELECT 320,620,STR_TO_DATE('1977-12-25','%Y-%m-%d'),STR_TO_DATE('2003-02-05','%Y-%m-%d'),2400,NULL,2,'CORNELIO',122 FROM dual UNION ALL
        SELECT 330,850,STR_TO_DATE('1958-08-19','%Y-%m-%d'),STR_TO_DATE('1980-03-01','%Y-%m-%d'),1700,90,0,'AMELIA',112 FROM dual UNION ALL
        SELECT 350,610,STR_TO_DATE('1979-04-13','%Y-%m-%d'),STR_TO_DATE('1999-09-10','%Y-%m-%d'),2700,NULL,1,'AURELIO',122 FROM dual UNION ALL
        SELECT 360,750,STR_TO_DATE('1978-10-29','%Y-%m-%d'),STR_TO_DATE('1998-10-10','%Y-%m-%d'),1800,100,2,'DORINDA',111 FROM dual UNION ALL
        SELECT 370,360,STR_TO_DATE('1977-06-22','%Y-%m-%d'),STR_TO_DATE('2000-01-20','%Y-%m-%d'),1860,NULL,1,'FABIOLA',121 FROM dual UNION ALL
        SELECT 380,880,STR_TO_DATE('1978-03-30','%Y-%m-%d'),STR_TO_DATE('1999-01-01','%Y-%m-%d'),1100,NULL,0,'MICAELA',112 FROM dual UNION ALL
        SELECT 390,500,STR_TO_DATE('1976-02-19','%Y-%m-%d'),STR_TO_DATE('2010-10-08','%Y-%m-%d'),1290,NULL,1,'CARMEN',110 FROM dual UNION ALL
        SELECT 400,780,STR_TO_DATE('1979-08-18','%Y-%m-%d'),STR_TO_DATE('2011-11-01','%Y-%m-%d'),1150,NULL,0,'LUCRECIA',111 FROM dual UNION ALL
        SELECT 410,660,STR_TO_DATE('1968-07-14','%Y-%m-%d'),STR_TO_DATE('1989-10-13','%Y-%m-%d'),1010,NULL,0,'AZUCENA',122 FROM dual UNION ALL
        SELECT 420,450,STR_TO_DATE('1966-10-22','%Y-%m-%d'),STR_TO_DATE('1988-11-19','%Y-%m-%d'),2400,NULL,0,'CLAUDIA',130 FROM dual UNION ALL
        SELECT 430,650,STR_TO_DATE('1967-10-26','%Y-%m-%d'),STR_TO_DATE('1988-11-19','%Y-%m-%d'),1260,NULL,1,'VALERIANA',122 FROM dual UNION ALL
        SELECT 440,760,STR_TO_DATE('1966-09-26','%Y-%m-%d'),STR_TO_DATE('1986-02-28','%Y-%m-%d'),1260,100,0,'LIVIA',111 FROM dual UNION ALL
        SELECT 450,880,STR_TO_DATE('1966-10-21','%Y-%m-%d'),STR_TO_DATE('1986-02-28','%Y-%m-%d'),1260,100,0,'SABINA',112 FROM dual UNION ALL
        SELECT 480,760,STR_TO_DATE('1965-04-04','%Y-%m-%d'),STR_TO_DATE('1986-02-28','%Y-%m-%d'),1260,100,1,'DIANA',111 FROM dual UNION ALL
        SELECT 490,880,STR_TO_DATE('1964-06-06','%Y-%m-%d'),STR_TO_DATE('1988-01-01','%Y-%m-%d'),1090,100,0,'HORACIO',112 FROM dual UNION ALL
        SELECT 500,750,STR_TO_DATE('1965-10-08','%Y-%m-%d'),STR_TO_DATE('1987-01-01','%Y-%m-%d'),1200,100,0,'HONORIA',111 FROM dual UNION ALL
        SELECT 510,550,STR_TO_DATE('1966-05-04','%Y-%m-%d'),STR_TO_DATE('1986-11-01','%Y-%m-%d'),1200,NULL,1,'ROMULO',110 FROM dual UNION ALL
        SELECT 550,780,STR_TO_DATE('1970-01-1','%Y-%m-%d'),STR_TO_DATE('1998-01-2','%Y-%m-%d'),600,120,0,'SANCHO',111 FROM dual
    ) 
    SELECT * FROM p;
            
-- @block
INSERT INTO centros (NUMCE, NOMCE, DIRCE)
    WITH p as (
        SELECT 10, 'Sede Central', 'C/ Atocha , 820 Madrid' FROM dual UNION ALL
        SELECT 20, 'Relacion con clientes', 'C/ Atocha, 405 Madrid' FROM dual
    )
    SELECT * FROM p;

-- @block
insert INTO departamentos(numde, numce, direc, tidir, presu, depde, nomde)
    with p as(
        select 100, 10, 260, "P", 72, NULL, "Direccion General" from dual union ALL
        select 110, 20, 80, "P", 90, 100, "Direccion Comercial" from dual union ALL
        select 111, 10, 180, "F", 66, 100, "Sector Industrial" from dual union ALL
        select 112, 20, 270, "P", 54, 110, "Sector Servicios" from dual union ALL
        select 120, 10, 150, "F", 18, 100, "Organizacion" from dual union all
        select 121, 10, 150, "P", 12, 120, "Personal" from dual union all
        SELECT 122, 10, 350, "P", 36, 120, "PROCESO DE DATOS" FROM DUAL UNION ALL
        SELECT 130, 10, 310, "P", 12, 100, "FINANZAS" FROM DUAL
    )
    SELECT * FROM P;

-- @block
 /*8. En una campaña de ayuda familiar se ha decidido dar a los empleados una paga extra de 60 C por hijo, a partir
del cuarto inclusive. Obtener por orden alfabético para estos empleados: nombre y salario total que van a cobrar
incluyendo esta paga extra. Mostrarlo como en la imagen */

SELECT NOMEM, SALAR+60*(NUMHIL-3) AS "salarioTotal"
FROM EMPLEADOS
WHERE NUMHIL > 3
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
WHERE SALAR >=
                (SELECT SALAR*1.15 FROM EMPLEADOS WHERE NOMEM = 'CLAUDIA' )
ORDER BY NOMEM;

--Practica 5--------------------------------------------------------------------------------------------------------------

-- @block
/* 1. Obtener por orden alfa el nombre y el salario de aquellos empleados que comienzan por la letra “A” y muestra
la consulta como aparece en la captura */

select NOMEM "Nombre", Concat(SALAR,' €') AS "salario"
FROM EMPLEADOS
WHERE NOMEM LIKE 'A%'
ORDER BY NOMEM;

--Practica 14-----------------------------------------------------------------------------------------------------------------
-- @block

/* 3. Obtener los nombres y los salarios medios de los departamentos cuyo salario medio supera al salario medio de
la empresa. */

select NOMDE, AVG(SALAR)
FROM DEPARTAMENTOS D JOIN EMPLEADOS E ON D.numde = E.numde
GROUP    BY NOMDE
HAVING AVG(SALAR) > (
                        SELECT AVG(SALAR) FROM EMPLEADOS
);

-- @block

alter table CENTROS add(
    prueba integer,
    CONSTRAINT pr_cen_ck CHECK (prueba > 0)
)

-- @block
select * 
from centros;

-- @block
insert into CENTROS(numce,nomce,dirce) values(30, 'prueba', 'prueba');