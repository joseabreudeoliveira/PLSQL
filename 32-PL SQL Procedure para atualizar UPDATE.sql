--PL SQL Procedure para atualizar UPDATE

--show all
--set serveroutput ON; 
--SELECT * FROM EMPLOYEE
--execute corrigi_nome_empoyee
create or replace procedure corrigi_nome_empoyee
is
begin
   UPDATE EMPLOYEE SET FNAME = CONCAT(CONCAT(TO_CHAR(EMP_SEQ), '-'), FNAME);
end;

--ROLLBACK