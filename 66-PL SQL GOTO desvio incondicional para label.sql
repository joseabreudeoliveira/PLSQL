--PL SQL GOTO desvio incondicional para label
DECLARE
   CONTADOR NUMBER := 0;
BEGIN
   <<inicio>>  --ISTO É UM LABEL
      CONTADOR := CONTADOR + 1;
      IF CONTADOR <= 10 THEN
         DBMS_OUTPUT.PUT_LINE('O CONTADOR ESTA EM: ' || TO_CHAR(CONTADOR));
         GOTO inicio;
      END IF;
END;