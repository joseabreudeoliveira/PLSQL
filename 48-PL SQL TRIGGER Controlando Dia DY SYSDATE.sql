--PL SQL TRIGGER Controlando Dia DY SYSDATE

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo

--SELECT * FROM EMPLOYEE
--SELECT TO_CHAR(SYSDATE, 'DY') FROM DUAL
--DROP TRIGGER controla_horario 
--UPDATE EMPLOYEE SET SALARY = 1700 WHERE EMP_SEQ = '100';

CREATE OR REPLACE TRIGGER controla_horario
   BEFORE insert or update 
          ON EMPLOYEE
BEGIN
   IF (TO_CHAR(SYSDATE, 'DY') IN ('SAB','DOM'))  OR (TO_CHAR(SYSDATE, 'hh24') not between '08' AND '17') THEN
      raise_application_error(-20001,'Não é permitido atualização fora de seu dia e ou horário de trabalho.');
   END IF;
END controla_horario;