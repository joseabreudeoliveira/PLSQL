--PL SQL Function retorna varios dados

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo

create or replace function dados_empoyee
   (codigo IN employee.emp_seq%TYPE)
   return varchar2
IS
   v_fname employee.fname%TYPE;
   v_lname employee.lname%TYPE;
begin
   SELECT fname, lname INTO v_fname,v_lname FROM EMPLOYEE WHERE emp_seq = codigo;
   return ('O nome é: ' || v_fname || ' e o sobrenome é : ' || v_lname || ' - ' || v_fname || ' ' || v_lname);
end dados_empoyee;


