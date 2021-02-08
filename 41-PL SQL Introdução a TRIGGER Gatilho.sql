--PL SQL Introdução a TRIGGER Gatilho

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