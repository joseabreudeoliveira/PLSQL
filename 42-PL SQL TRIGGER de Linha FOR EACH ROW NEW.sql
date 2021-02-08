--PL SQL TRIGGER de Linha FOR EACH ROW NEW

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
   [WHEN ( condição ) ]
DECLARE
   Declarações
BEGIN
   Comandos
EXCEPTION
   Rotinas_de_execução
END;
*/
--SELECT * FROM EMPLOYEE
--DROP TRIGGER controla_salario 
--execute grava_empoyee('100','Jose','B','Oliveira','177568173','21/12/2020','Rua Gomes Cardim, 657','M',700,'177568173',5);

CREATE OR REPLACE TRIGGER controla_salario
   BEFORE insert or update 
          OF SALARY
          ON EMPLOYEE
      FOR EACH ROW
DECLARE
   
BEGIN

   IF :new.salary < 1040 then
      raise_application_error(-20001,'O salário não pode ser inferior ao salário mínimo.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Registro do funcionário inserido com sucesso');
   END IF;
END controla_salario;