--SQL Controlando Fluxo com ELSIF

--Ativar output
--set serveroutput ON; 
--Desativa output
--set serveroutput OFF; 
--drop procedure mes;
--execute mes;

create or replace procedure mes
is

   qual_mes number;
   nome_mes varchar2(15);
   
begin

   qual_mes := 12;
  
   if qual_mes = 1 then
     nome_mes := 'Janeiro';
   elsif  qual_mes = 2 then
     nome_mes := 'Fevereiro';
   elsif  qual_mes = 3 then
     nome_mes := 'Março';
   elsif  qual_mes = 4 then
     nome_mes := 'Abril';
   elsif  qual_mes = 5 then
     nome_mes := 'Maio';
   elsif  qual_mes = 6 then
     nome_mes := 'Junho';
   elsif  qual_mes = 7 then
     nome_mes := 'Julho';
   elsif  qual_mes = 8 then
     nome_mes := 'Agosto';
   elsif  qual_mes = 9 then
     nome_mes := 'Setembro';
   elsif  qual_mes = 10 then
     nome_mes := 'Outubro';
   elsif  qual_mes = 11 then
     nome_mes := 'Novembro';
   elsif  qual_mes = 12 then
     nome_mes := 'Dezembro';
   end if;
   
   dbms_output.put_line('O mês é : ' || nome_mes);
      
end;
