--PL SQL Select e clausula Into

set serveroutput ON; 

declare
   nome        VARCHAR2(40);
begin
   SELECT 'Abreu' INTO nome FROM DUAL;
   DBMS_OUTPUT.PUT_LINE(nome);
end;