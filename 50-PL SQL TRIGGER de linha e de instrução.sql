--PL SQL TRIGGER de linha e de instrucção

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo

--SELECT * FROM EMPLOYEE
--SELECT TO_CHAR(SYSDATE, 'DY') FROM DUAL
--DROP TRIGGER gravado 
--UPDATE EMPLOYEE SET SEX = 'M';

CREATE OR REPLACE TRIGGER gravado
   AFTER update ON EMPLOYEE   
   /* 
   incluído (for each row) se torna uma trigger de linha executando a trigger uma vez para cada linha da tabela
   e se não incluído uma trigger de instrução executada apenas uma vez independente do numero de linhas da tabela que forem atualizadas
   */
   for each row  
BEGIN
   DBMS_OUTPUT.PUT_LINE('Registro Alterado Com Sucesso.');
END gravado;