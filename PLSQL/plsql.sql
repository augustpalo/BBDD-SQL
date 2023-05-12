
/* BEGIN
    IF 10 > 5 THEN
        dbms_output.put_line('Cierto');
    else
        dbms_output.put_line('Falso');
    end if;
end;
/ */

/* BEGIN
    IF 10 > 5 AND 5 > 1 THEN
        DBMS_OUTPUT.PUT_LINE ('Cierto');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Falso');
    END IF;
END;
/ */

/* BEGIN
    IF 10 > 5 AND 5 > 50 THEN
        DBMS_OUTPUT.PUT_LINE ('Cierto');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Falso');
    END IF;
END;
/ */

-- snippet this!!!!

/* BEGIN
FOR i IN 1..10 LOOP
DBMS_OUTPUT.PUT_LINE (i);
END LOOP;
END;
/ */

DECLARE
    num NUMBER(3) := 0;
BEGIN
       WHILE num<=100 LOOP
        DBMS_OUTPUT.PUT_LINE (num);
        num:= num+2;
       END LOOP;
END;
/