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