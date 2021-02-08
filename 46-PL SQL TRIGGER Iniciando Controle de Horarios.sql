--PL SQL TRIGGER Iniciando Controle de Horarios

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo

--SELECT * FROM EMPLOYEE
--DROP TRIGGER controla_salario 
--UPDATE EMPLOYEE SET SALARY = 1700 WHERE EMP_SEQ = '100';

CREATE OR REPLACE TRIGGER controla_horario
   BEFORE insert or update 
          ON EMPLOYEE
DECLARE
   
BEGIN
   IF (TO_CHAR(SYSDATE, 'hh24') not between '10' AND '12') THEN
      raise_application_error(-20001,'Não é permitido atualização fora de seu horário de trabalho.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Registro do funcionário alterado com sucesso');
   END IF;
END controla_horario;