--Mais SYSDATE personalizando add months para meses

SELECT TO_CHAR('02/08/2009') 
     , TO_CHAR(ADD_MONTHS('02/08/2009', 3), 'dd/mm/yyyy') 
     , TO_CHAR(ADD_MONTHS('02/08/2009', -3), 'dd/mm/yyyy') 
  FROM DUAL; 

