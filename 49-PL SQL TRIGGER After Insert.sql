--PL SQL TRIGGER After Insert

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo

--SELECT * FROM EMPLOYEE
--SELECT TO_CHAR(SYSDATE, 'DY') FROM DUAL
--DROP TRIGGER gravado 
--UPDATE EMPLOYEE SET SALARY = 1700 WHERE EMP_SEQ = '100';

CREATE OR REPLACE TRIGGER gravado
   AFTER insert or update ON EMPLOYEE
BEGIN
   DBMS_OUTPUT.PUT_LINE('Registro Inserido/Alterado Com Sucesso.');
END gravado;