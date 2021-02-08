--Manipulando SYSDATE add months para meses

SELECT TO_CHAR(SYSDATE,'dd/mm/yyyy') 
     , TO_CHAR(ADD_MONTHS(SYSDATE, 3), 'dd/mm/yyyy') 
     , TO_CHAR(ADD_MONTHS(SYSDATE, -3), 'dd/mm/yyyy') 
  FROM DUAL; 

