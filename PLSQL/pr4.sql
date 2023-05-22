
-- sqlplus PLSQL/PLSQL

--5.5.4

--Crea un procedimiento llamado ESCRIBE para mostrar por pantalla el mensaje HOLA MUNDO

/* create or replace
procedure escribe is
begin
  dbms_output.put_line('Hola Mundo');
end ;
/

exec escribe();
/ */

-- Crea un procedimiento llamado ESCRIBE_MENSAJE que tenga un parámetro de tipo VARCHAR2 que recibe un texto y lo muestre por pantalla. 
-- La forma del procedimiento será la siguiente: ESCRIBE_MENSAJE (mensaje VARCHAR2)
/* 
CREATE OR REPLACE
PROCEDURE ESCRIBE_MENSAJE(mensaje VARCHAR2) IS
begin
  dbms_output.put_line(mensaje)
end;
/
 */

-- Crea un procedimiento llamado SERIE que muestre por pantalla una serie de números desde un
-- mínimo hasta un máximo con un determinado paso. La forma del procedimiento será la siguiente:

/* CREATE OR REPLACE
procedure SERIE(minimo NUMBER, maximo NUMBER, paso NUMBER) IS 
  num number := minimo;
begin
  while num <= maximo loop
    dbms_output.put_line(num);
    num := num + paso;
  end loop;
end;
/

exec serie(0,100,8);
/ */

-- Crea una función AZAR que reciba dos parámetros y genere un número al azar entre un mínimo y
-- máximo indicado. La forma de la función será la siguiente:

CREATE OR REPLACE 
FUNCTION AZAR(minimo NUMBER, maximo NUMBER) RETURN HOTEL%ROWTYPE IS
  rango NUMBER := maximo - minimo;
begin
  rango := rango;
  return MOD(ABS(dbms_random.random),rango) + minimo ;
end;
/

SELECT AZAR(1337,5000) FROM DUAL;
/

-- Crea una función NOTA que reciba un parámetros que será una nota numérica entre 0 y 10 y devuel-
-- va una cadena de texto con la calificación (Suficiente, Bien, Notable, . . . ). La forma de la función
-- será la siguiente: NOTA (nota NUMBER) RETURN VARCHAR2

/* FUNCTION NOTA(resultado NUMBER) return varchar2 is
  begin
    case 
      when resultado = 10 or resultado = 9 then RETURN 'Matricula';
      when resultado = 8 or resultado = 7 then RETURN 'Notable';
      when resultado = 6 or resultado = 5 then RETURN 'surficiente';
      when resultado < 5 and resultado >= 0 then RETURN 'SUSPENSO';
      else 
    end;
  end;
 */
