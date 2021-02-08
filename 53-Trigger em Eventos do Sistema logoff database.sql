--Trigger em Eventos do Sistema logoff database

--show all
--set serveroutput ON; 
--variable v_nome_completo VARCHAR2(100);
--execute :v_nome_completo := dados_empoyee(9);
--print v_nome_completo

--SELECT * FROM LOGS
--DROP TRIGGER gravado 
/*Desabilitar/Habilitar uma trigger
ALTER TRIGGER desconecta disable;
ALTER TRIGGER desconecta enable;
*/

CREATE OR REPLACE TRIGGER desconecta
   BEFORE LOGOFF ON DATABASE
BEGIN
   INSERT INTO LOGS(USUARIO, DATA, ACAO) VALUES ( USER, SYSDATE, 'SAIU DO SISTEMA');
END desconecta;