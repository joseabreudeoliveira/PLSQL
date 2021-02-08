--Iniciando PL SQL Bloco Anonimo

--Ativar output
set serveroutput ON; 
--Desativa output
--set serveroutput OFF; 
declare
   numero1  number;
   numero2  number;
begin
   numero1 := 8;
   numero2 := 10;
   dbms_output.put_line('A Soma dos numeros é : ' || (numero1+numero2));
end;
