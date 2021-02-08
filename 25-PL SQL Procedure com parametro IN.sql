--PL SQL Procedure com parametro IN

--Ativar output
set serveroutput ON; 
--Desativa output
--set serveroutput OFF; 
--execute soma_com_parametros(11,9)

create or replace procedure soma_com_parametros 
(numero1  IN number, numero2  IN number)
is
begin
   dbms_output.put_line('A Soma dos numeros é : ' || (numero1+numero2));
end;
