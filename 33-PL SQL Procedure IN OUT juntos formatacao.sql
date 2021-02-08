--PL SQL Procedure IN OUT juntos formatacao

--show all
--set serveroutput ON; 
/*
variable fone varchar2(16);
begin
:fone := '011971711828';
end;
*/
--execute telefone(:fone)
--print fone;
create or replace procedure telefone 
   (num_fone IN OUT varchar2)
is

begin
    --011971711828  -> (011)97171-1828
    num_fone := '(' || substr(num_fone,1,3) || ')' || substr(num_fone,4,5) || '-' || substr(num_fone,9,4);
end telefone;

--ROLLBACK