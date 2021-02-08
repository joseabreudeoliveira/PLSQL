--PL SQL Laço de Repetição While Loop


declare

   num number;
   i number;
   
begin

   num := 5;
   i := 1;
   
   DBMS_OUTPUT.PUT_LINE('Manual');
   DBMS_OUTPUT.PUT_LINE(num || ' x 1 = ' || (num * 1) );
   DBMS_OUTPUT.PUT_LINE(num || ' x 2 = ' || (num * 2) );
   DBMS_OUTPUT.PUT_LINE(num || ' x 3 = ' || (num * 3) );
   DBMS_OUTPUT.PUT_LINE(num || ' x 4 = ' || (num * 4) );
   DBMS_OUTPUT.PUT_LINE(num || ' x 5 = ' || (num * 5) );
   
   DBMS_OUTPUT.PUT_LINE('Com Laço de Repetição');
   
   while i <= 10 loop
      DBMS_OUTPUT.PUT_LINE(num || ' x ' || i || ' = ' || (num * i) );
      if i = 3 then
      exit;
      end if;
      i := i + 1;
   end loop;
   
end;