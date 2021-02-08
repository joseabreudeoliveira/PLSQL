--PL SQL Function em Expresso?es SQL

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo
SELECT * FROM EMPLOYEE; 
SELECT dados_empoyee(EMP_SEQ), SSN, BDATE FROM EMPLOYEE;

