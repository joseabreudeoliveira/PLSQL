--PL SQL Laço de Repetição FOR exit when

set serveroutput ON; 

declare
   num number;
begin
   num := 5;
   for i in 1..10 loop
      DBMS_OUTPUT.PUT_LINE(num || ' x ' || i || ' = ' || (num * i) );
      exit when i = 7;
    end loop;
end;