--PL SQL GOTO finalizando devio incondicional
DECLARE
   --CONTADOR NUMBER := 0;
   CONTADOR NUMBER := '&numero';
BEGIN
   <<inicio>>  --ISTO É UM LABEL
      CONTADOR := CONTADOR + 1;
      IF CONTADOR <= 10 THEN
         DBMS_OUTPUT.PUT_LINE('O CONTADOR ESTA EM: ' || TO_CHAR(CONTADOR));
         GOTO inicio;
      ELSE
         GOTO fim;
      END IF;
   <<fim>>
      DBMS_OUTPUT.PUT_LINE('FIM');
      Null;  --NÃO FAZ MAIS NADA
END;