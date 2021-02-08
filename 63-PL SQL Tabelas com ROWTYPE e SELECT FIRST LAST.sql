--PL SQL Tabelas com ROWTYPE e SELECT FIRST LAST

--set serveroutput ON; 
--SELECT * FROM ESTOQUE
-- DESCR ESTOQUE
DECLARE
   TYPE DADOS_ESTOQUE IS TABLE OF ESTOQUE%ROWTYPE INDEX BY BINARY_INTEGER;
   DADOS DADOS_ESTOQUE;
BEGIN

   FOR i IN 1..4 LOOP
      SELECT * INTO DADOS(i) FROM ESTOQUE WHERE EST_CODIGO = i;
   END LOOP;
   
   FOR i IN DADOS.FIRST..DADOS.LAST LOOP
         DBMS_OUTPUT.PUT_LINE('1-C�digo = ' || TO_CHAR(DADOS(i).EST_CODIGO) || ' nome = ' || DADOS(i).EST_NOME);
   END LOOP;
   
   DBMS_OUTPUT.PUT_LINE('---------------------------------------');
   DBMS_OUTPUT.PUT_LINE('Primeiro Registo = ' || TO_CHAR(DADOS.FIRST) || ' Utimo Registro = ' || TO_CHAR(DADOS.LAST));
   
END;