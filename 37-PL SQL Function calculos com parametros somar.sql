--PL SQL Function calculos com parametros

--set serveroutput ON; 
--variable calc number;
--execute :calc := soma(5,4);
--print calc;

create or replace function soma
   (numero1 IN number,
    numero2 IN number)
   return number
is
   soma number;
begin
   soma := numero1 + numero2;
   return (soma);
end soma;


