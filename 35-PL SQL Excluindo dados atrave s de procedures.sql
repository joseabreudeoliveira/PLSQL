--PL SQL Excluindo dados atrave s de procedures

--show all
--set serveroutput ON; 
--SELECT * FROM EMPLOYEE
--DESCR EMPLOYEE
--execute excluir_empoyee
--drop procedure excluir_empoyee
--execute excluir_empoyee('100');

create or replace procedure excluir_empoyee
(
V_EMP_SEQ  IN EMPLOYEE.EMP_SEQ%TYPE
)
is
begin
   DELETE EMPLOYEE WHERE EMP_SEQ = V_EMP_SEQ;
   dbms_output.put_line('Registro excluído com sucesso.');
end excluir_empoyee;

--ROLLBACK


