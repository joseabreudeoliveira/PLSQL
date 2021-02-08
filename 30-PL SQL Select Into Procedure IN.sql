--PL SQL Select Into Procedure IN

--set serveroutput ON; 
--execute pesquisa_empoyee(9)

create or replace procedure pesquisa_empoyee(codigo IN number)
IS
   v_fnome VARCHAR(40);
begin
   SELECT fname INTO v_fnome FROM EMPLOYEE WHERE emp_seq = codigo;
   DBMS_OUTPUT.PUT_LINE('O nome do empregado é : ' || v_fnome);
end;
