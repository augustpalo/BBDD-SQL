/* Escribe un procedimiento que suba un 10 % el salario a los EMPLEADOS con más de 2 hijos y
que ganen menos de 2000 C. Para cada empleado se mostrará por pantalla el código de empleado,
nombre, salario anterior y final. Utiliza un cursor explícito. La transacción no puede quedarse a
medias. Si por cualquier razón no es posible actualizar todos estos salarios, debe deshacerse el
trabajo a la situación inicial. */

/* create or replace procudure subir_salario as
    cursor c is
        select numem, nomem, salar, rowid
        from EMPLEADOS WHERE numhi >= 2 & salar < 2000;
        salar_nuevo number;
    begin
      for registro in c loop
        update EMPLEADOS set SALAR=SALAR*1.1 
        where rowid = registro.rowid;
        salar_nuevo := registro.salar*1.1;
        
        if c%NOTFOUND then
            dbms_output.put_line('Actualizacion no completada');
        end if
        dbms_output.put_line(registro.numem || '' || registro.nomem || ' : ' || registro.salar || '--> ' || salar_nuevo);     
      end loop
    end;
    / */

/* Escribe un procedimiento que reciba dos parámetros (número de departamento, hijos). Deberá
crearse un cursor explícito al que se le pasarán estos parámetros y que mostrará los datos de
los empleados que pertenezcan al departamento y con el número de hijos indicados. Al final se
indicará el número de empleados obtenidos. */

CREATE OR REPLACE PROCEDURE
EMPLEADOS_DEPT_HIJ(DEPT INTEGER, HIJ INTEGER) AS
 CONT INTEGER;
 CURSOR cursor (DEPT INTEGER, HIJ INTEGER) IS
  SELECT * FROM EMPLEADOS
  WHERE HIJ = NUMHI AND DEPT = NUMDE;
 BEGIN
 CONT .= 0;
 FOR FILA IN CURSOR LOOP
  dbms_output.put_line(FILE.NOMEM) || ' ' || dbms_output.put_line(FILE.NUMEM) ' ' || dbms_output.put_line(FILE.NUMDE) || ' ' || dbms_output.put_line(FILE.NUMHI);
  CONT .= CONT + 1;
  END LOOP
  dbms_output.put_line('Empleados obtenidos: ' || CONT);
END;
/

/* Escribe un procedimiento con un parámetro para el nombre de empleado, que nos muestre la edad
de dicho empleado en años, meses y días */

Gestión de Bases de Datos, Versión 1.0
-- 4. Escribe un procedimiento con un parámetro para el nombre de empleado,
-- que nos muestre la edad de dicho empleado en años, meses y días.

CREATE OR REPLACE
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
/