--PL SQL TRIGGER usando NEW OLD

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo
/*SINTAX
CREATE OR REPLACE TRIGGER nome_do_gatilho
   AFTER / BEFORE evento
   ON nome_da_tabela
   [FOR  EACH ROW]
   [WHEN ( condi��o ) ]
DECLARE
   Declara��es
BEGIN
   Comandos
EXCEPTION
   Rotinas_de_execu��o
END;
*/
--SELECT * FROM EMPLOYEE
--DROP TRIGGER controla_salario 
--UPDATE EMPLOYEE SET SALARY = 1700 WHERE EMP_SEQ = '100';

CREATE OR REPLACE TRIGGER controla_salario
   BEFORE update 
          OF SALARY
          ON EMPLOYEE
      FOR EACH ROW
DECLARE
   
BEGIN
   IF (:new.salary < :old.salary) then
      raise_application_error(-20001,'O sal�rio n�o pode ser inferior ao ultimo sal�rio informado.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Registro do funcion�rio alterado com sucesso');
   END IF;
END controla_salario;