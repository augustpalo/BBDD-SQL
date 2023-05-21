-- @block
/* SELECT * from departamentos; */

/* DECLARE
  contador number := 1;

BEGIN
  LOOP
    dbms_output.put_line(contador);
    contador := contador + 1;
    exit when contador > 10;
   end LOOP;
end;
/
 */
/* Escribe un procedimiento que muestre el número de empleados y el salario mínimo, máximo y
medio del departamento de FINANZAS. Debe hacerse uso de cursores implícitos, es decir utilizar
SELECT . . . INTO */

create or replace
PROCEDURE muestra_sal as
  presupuesto DEPARTAMENTOS.PRESU%TYPE;
  numero_centro DEPARTAMENTOS.NUMCE%TYPE;
BEGIN
  SELECT PRESU, NUMCE INTO presupuesto, numero_centro
  FROM DEPARTAMENTOS WHERE NUMDE = 120;
  dbms_output.put_line(presupuesto);
  dbms_output.put_line(numero_centro);
  end;
  /



/* 
CREATE OR REPLACE
PROCEDURE Finanzas AS
  numero NUMBER;
  maximo NUMBER;
  minimo NUMBER;
  media NUMBER;
  dpto NUMBER;
BEGIN
  SELECT NUMDE INTO dpto FROM DEPARTAMENTOS
  WHERE UPPER(NOMDE) = 'FINANZAS';
  
  SELECT COUNT(*), MAX(SALAR), MIN(SALAR), ROUND(AVG(SALAR), 2)
  INTO numero, maximo, minimo, media
  FROM EMPLEADOS WHERE NUMDE = dpto;
  DBMS_OUTPUT.PUT_LINE('Departamento de FINANZAS');
  DBMS_OUTPUT.PUT_LINE(numero || ' Empleados');
  DBMS_OUTPUT.PUT_LINE(maximo || ' C es el salario máximo');
  DBMS_OUTPUT.PUT_LINE(minimo || ' C es el salario mínimo');
  DBMS_OUTPUT.PUT_LINE(media || ' C es el salario medio');
 
  EXCEPTION
  WHEN NO_DATA_FOUND THEN
  DBMS_OUTPUT.PUT_LINE('No se han encontrado datos');
END Finanzas;
/
exec Finanzas;

 */

/* CREATE OR REPLACE
PROCEDURE Edad_Empleado (nombre EMPLEADOS.NOMEM%TYPE) AS
-- Utilizamos un cursor explícito por si existiese más de un empleado
-- con el mismo nombre.
  CURSOR c(nom EMPLEADOS.NOMEM%TYPE) IS
    SELECT NOMEM, FECNA
    FROM EMPLEADOS WHERE NOMEM = nom;
  meses NUMBER;
  a NUMBER;
  m NUMBER;
  d NUMBER;
BEGIN
  DBMS_OUTPUT.PUT_LINE('EMPLEADO: AÑOS MESES DÍAS');
  FOR registro IN c(nombre) LOOP
    meses := MONTHS_BETWEEN (SYSDATE, registro.FECNA);
    a := meses/12;
    m := MOD (meses, 12);
    d := (m - TRUNC (m))*30;-- parte decimal de m multiplicada por 30
    DBMS_OUTPUT.PUT_LINE(registro.NOMEM || ': '
    || TRUNC(a) || ' ' || TRUNC(m) || ' ' || TRUNC(d) );
  END LOOP;
END Edad_Empleado;
/ */

/* CREATE OR REPLACE procedure encuentra_dept(nombre_emp EMPLEADOS.nomem%type)  
AS
  cursor c (nombre_empleado empleados.nomem%type) is
    select numde 
    from empleados where NOMEM = nombre_empleado;
  nombredept DEPARTAMENTOS.NOMDE%type;
  begin
    for registro in c(upper(nombre_emp)) LOOP
      SELECT nomde into nombredept from departamentos where registro.numde = NUMDE;
      dbms_output.put_line(nombredept);
    END LOOP;
  END;
  /
  exec encuentra_dept('CESAR'); */
/* create or replace procedure encuentra_dept(nombre_emp ) as
  DECLARE
    var1 VARCHAR;
  BEGIN
    SELECT NUMDE into var1 from DEPARTAMENTOS where departamentos.NUMDE = 
                                                    (select numde from empleados where nombre_emp = nomem) ; 
    SELECT nomem from empleados where numde = var1;
 */


