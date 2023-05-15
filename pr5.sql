/* Escribe un procedimiento que suba un 10 % el salario a los EMPLEADOS con más de 2 hijos y
que ganen menos de 2000 C. Para cada empleado se mostrará por pantalla el código de empleado,
nombre, salario anterior y final. Utiliza un cursor explícito. La transacción no puede quedarse a
medias. Si por cualquier razón no es posible actualizar todos estos salarios, debe deshacerse el
trabajo a la situación inicial. */

create or replace procudure subir_salario as
    cursor c is
        select numem, nomem, salar, rowid
        from EMPLEADOS WHERE numhi >= 2 & salar < 2000;
        salar_nuevo number;
    begin
      for registro in c loop
        update EMPLEADOS et SALAR=SALAR*1.1 
        where rowid = registro.rowid;
        salar_nuevo := registro.salar*1.1;
        
        if c%NOTFOUND then
            dbms_output.put_line('Actualizacion no completada');
        end if
        dbms_output.put_line(registro.numem || '' || registro.nomem || ' : ' || registro.salar || '--> ' || salar_nuevo);     
      end loop
    end;
    /