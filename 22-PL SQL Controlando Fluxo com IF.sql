---PL SQL Controlando Fluxo com IF

--Ativar output
--set serveroutput ON; 
--Desativa output
--set serveroutput OFF; 
--drop procedure nota_aluno;
--execute nota_aluno;

create or replace procedure nota_aluno
is

   nota_1 number;
   nota_2 number;
   soma number;
   media number;
   nome varchar2(40);
   
begin

   nota_1 := 8;
   nota_2 := 8;
   nome := 'Jose Abreu de Oliveira';
   soma := nota_1+nota_2;
   media := soma/2;
   
   dbms_output.put_line('A Soma das notas é : ' || (soma));
   dbms_output.put_line('A media é : ' || (media));
   dbms_output.put_line('O aluno é : ' || (nome));
   
   if media >= 6 then
      dbms_output.put_line('O aluno : ' || (nome || ' esta A P R O V A D O'));
   else
      dbms_output.put_line('O aluno : ' || (nome || ' esta R E P R O V A D O'));
   end if;
   
end;
