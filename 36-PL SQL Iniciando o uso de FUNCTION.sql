--PL SQL Iniciando o uso de FUNCTION

--set serveroutput ON; 
--variable calc number;
--execute :calc := calculo(5);
--print calc;

create or replace function calculo
   (numero IN number)
   return number
is
begin
   return (numero + 10000000);
end calculo;


