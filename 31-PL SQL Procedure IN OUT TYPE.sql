--PL SQL Procedure IN OUT TYPE

--show all
--set serveroutput ON; 
--variable v_fnome VARCHAR2(10);
--variable v_lname VARCHAR2(10);
--execute pesquisa_empoyee(9,:v_fnome,:v_lname);

--desta forma se um dia o type for mudado na tabela a procedure não funcionará mais
--create or replace procedure pesquisa_empoyee(codigo IN number)
--desta forma se um dia o type for mudado na tabela a procedure continuará funcionando
create or replace procedure pesquisa_empoyee
   (codigo IN employee.emp_seq%TYPE, 
    v_fnome OUT employee.fname%TYPE,
    v_lname OUT employee.lname%TYPE)
IS
begin
   SELECT fname, lname INTO v_fnome, v_lname FROM EMPLOYEE WHERE emp_seq = codigo;
   DBMS_OUTPUT.PUT_LINE('O nome do empregado é : ' || v_fnome);
   DBMS_OUTPUT.PUT_LINE('O sobrenome do empregado é : ' || v_lname);
end;
--SELECT * FROM EMPLOYEE,
--DESCR EMPLOYEE