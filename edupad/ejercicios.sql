/* Ejercicio 1: Crear un procedimiento almacenado que acepte `id_libro` y `cantidad` 
como parámetros, y devuelva el precio total para esa cantidad de libros. */

create or replace procedure precio_total(id LIBROS.id_libro%type, cant PEDIDOS.cantidad) AS
        coste LIBROS.precio%type;
    begin
        select precio into coste from LIBROS where id = id_libro;
        dbms_output.put_line(coste*cant);
    end;
/

/* Ejercicio 2: Crear una función en PL/SQL que acepte `id_cliente` 
como parámetro y devuelva el número total de libros pedidos por ese cliente. */

create or replace function pedidos_cliente (id CLIENTE.id_cliente) return number as
    numero number;
    total number;
    begin

        select sum(cantidad) into numero from PEDIDOS where id_cliente = id;

        dbms_output.put_line(numero);
        return numero;
    end;

-- Ejercicio 3: Escribir un bloque de código PL/SQL que declare una variable `id_cliente`, 
-- le asigne un valor y luego utilice una declaración IF-THEN-ELSE para verificar si el cliente ha realizado algún pedido.
-- Si el cliente ha hecho algún pedido, imprimir los detalles del pedido.

DECLARE
    id_cliente CLIENTE.id_cliente%type
    pedi PEDIDO.id_pedido%rowtype

    select * from PEDIDO into pedi where ID_CLIENTE = id;
     
    begin
    if pedi.id_pedido is not null then
        dbms_output.put_line(pedi.id_pedido);
        dbms_output.put_line(pedi.id_cliente);
        dbms_output.put_line(pedi.id_libro);
        dbms_output.put_line(pedi.cantidad)
      
    else
      dbms_output.put_line('Cliente sin pedidos')
    end if;





-- Ejercicio 4: Crear un bloque PL/SQL que imprima los títulos de los primeros 10 libros en la tabla `Libros` utilizando un bucle FOR.



-- Ejercicio 5: Crear un bloque PL/SQL que imprima los títulos de los primeros 10 libros en la tabla `Libros` utilizando un bucle WHILE.



-- Ejercicio 6: Crear un cursor para recorrer los registros de la tabla `Pedidos` para un `id_cliente` dado, imprimiendo el título de cada libro pedido por el cliente.



-- Ejercicio 7: Crear un bloque PL/SQL que intente obtener el precio de un libro utilizando un `id_libro` que no existe en la tabla `Libros` y maneje la excepción resultante.



-- Ejercicio 8: Crear un procedimiento almacenado que acepte un correo de cliente como parámetro, verifique si existe en la tabla de Clientes y, si no existe, inserte un nuevo cliente con ese correo.



-- Ejercicio 9: Crear una función que devuelva el número total de libros diferentes que han sido pedidos por todos los clientes.



-- Ejercicio 10: Crear un bloque PL/SQL que utilice un cursor para recorrer los registros de la tabla `Pedidos` e imprima el total de pedidos realizados hasta ahora.



-- Ejercicio 11: Crear una función dentro de un paquete que acepte un ID de libro como parámetro y devuelva el precio del libro.



-- Ejercicio 12: Crear un procedimiento dentro de un paquete que acepte un ID de cliente y un ID de libro como parámetros e inserte un nuevo pedido en la tabla Pedidos.



-- Ejercicio 13: Crear un procedimiento dentro de un paquete que imprima todos los pedidos realizados por un cliente específico.



-- Ejercicio 14: Crear un paquete que incluya los procedimientos y funciones definidos en los ejercicios 11, 12 y 13.



-- Ejercicio 15: Crear un paquete que incluya una función que devuelva el número total de libros diferentes que han sido pedidos por todos los clientes y un procedimiento que imprima todos los pedidos realizados hasta la fecha.



-- Ejercicio 16: Escribir un bloque de código PL/SQL que utilice las funciones y procedimientos definidos en los paquetes creados en los ejercicios 14 y 15.