--PL SQL Tabelas TYPE IS TABLE INDEX BY BYNARY INTEGER

--set serveroutput ON; 
--SELECT * FROM ESTOQUE
-- DESCR ESTOQUE
DECLARE

   TYPE CODIGO IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
   TYPE NOME   IS TABLE OF VARCHAR(40) INDEX BY BINARY_INTEGER;
   
   T_CODIGO CODIGO;
   T_NOME NOME;
BEGIN
   T_CODIGO(1) := 1;
   T_NOME(1)   := 'Jose';
   T_CODIGO(2) := 2;
   T_NOME(2)   := 'Abreu';
   T_CODIGO(3) := 3;
   T_NOME(3)   := 'de';
   T_CODIGO(4) := 4;
   T_NOME(4)   := 'Oliveira';
   
   DBMS_OUTPUT.PUT_LINE('1-Código = ' || TO_CHAR(T_CODIGO(1)) || ' nome = ' || T_NOME(1));
   DBMS_OUTPUT.PUT_LINE('2-Código = ' || TO_CHAR(T_CODIGO(2)) || ' nome = ' || T_NOME(2));
   DBMS_OUTPUT.PUT_LINE('3-Código = ' || TO_CHAR(T_CODIGO(3)) || ' nome = ' || T_NOME(3));
   DBMS_OUTPUT.PUT_LINE('4-Código = ' || TO_CHAR(T_CODIGO(4)) || ' nome = ' || T_NOME(4));
   
   DBMS_OUTPUT.PUT_LINE('Primeiro Registo = ' || TO_CHAR(T_CODIGO.FIRST) || ' Utimo Registro = ' || TO_CHAR(T_CODIGO.LAST));
END;