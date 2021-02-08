--Function retorna valor do Curso

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(10);
--execute :v_nome_completo := nome_empoyee(9);
--print v_nome_completo

create or replace function nome_empoyee
   (codigo IN employee.emp_seq%TYPE)
   return varchar2
IS
   v_nome varchar2(40) := ' ';
begin
   SELECT fname || ' ' || lname INTO v_nome FROM EMPLOYEE WHERE emp_seq = codigo;
   return (v_nome);
end nome_empoyee;


