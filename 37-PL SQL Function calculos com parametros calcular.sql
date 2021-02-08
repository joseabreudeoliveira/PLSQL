--PL SQL Function calculos com parametros

--set serveroutput ON; 
--variable calc number;
--execute :calc := calcular(5,4,'somar');
--execute :calc := calcular(8,4,'dividir');
--execute :calc := calcular(5,4,'multiplicar');
--execute :calc := calcular(5,4,'subtrair');
--print calc;

create or replace function calcular
   (numero1 IN number,
    numero2 IN number,
    oper IN varchar)
   return number
is
   calculo number;
begin
   if oper = 'somar' then
      calculo := numero1 + numero2;
   elsif oper = 'dividir' then
      calculo := numero1 / numero2;
   elsif oper = 'multiplicar' then
      calculo := numero1 * numero2;
   elsif oper = 'subtrair' then
      calculo := numero1 - numero2;
   end if;
   return (calculo);
end calcular;


