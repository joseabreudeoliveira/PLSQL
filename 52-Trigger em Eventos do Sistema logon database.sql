--Trigger em Eventos do Sistema logon database

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo

--SELECT * FROM LOGS
--DROP TRIGGER gravado 
/*Desabilitar/Habilitar uma trigger
ALTER TRIGGER conecta disable;
ALTER TRIGGER conecta enable;
*/
CREATE OR REPLACE TRIGGER conecta
   AFTER LOGON ON DATABASE
BEGIN
   INSERT INTO LOGS(USUARIO, DATA, ACAO) VALUES ( USER, SYSDATE, 'CONECTOU NO SISTEMA');
END conecta;