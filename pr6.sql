/* Desarrolla el paquete ARITMETICA cuyo código fuente viene en este tema. Crea un archivo para
la especificación y otro para el cuerpo. Realiza varias pruebas para comprobar que las llamadas a
funciones y procedimiento funcionan correctamente. */

create or replace 
PACKAGE ARITMETICA IS
    version NUMBER:= 1.0;

    PROCEDURE MOSTRAR_INFO;
    PROCEDURE AYUDA;
    FUNCTION SUMA(a number, b number) return number;
    FUNCTION RESTA(a number, b number) return number;
    FUNCTION MULTIPLICA(a number, b number) return number;
    FUNCTION DIVIDE(a number, b number) return number;
END ARITMETICA;
/

CREATE OR REPLACE 
PACKAGE BODY ARITMETICA IS

    PROCEDURE MOSTRAR_INFO is
        BEGIN
            dbms_output.put_line('Paquete de operaciones aritmeticas. Version: ' || version );
        END;

    PROCEDURE AYUDA IS
        BEGIN
            dbms_output.put_line('AYUDA DEL PAQUETE ARITMETICA');
            dbms_output.put_line('--__--__--__--__--__--__--__--');
            dbms_output.put_line('');
        END;

    FUNCTION SUMA (a number, b number) return number IS  
        BEGIN 
            return (a+b);
        END;
    FUNCTION RESTA (a number, b number) return number IS  
        BEGIN 
            return (a-b);
        END;
    FUNCTION MULTIPLICA (a number, b number) return number IS  
        BEGIN 
            return (a*b);
        END;
    FUNCTION DIVIDE (a number, b number) return number IS  
        BEGIN 
            return (a/b);
        END;
END;
/