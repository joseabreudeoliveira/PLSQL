--Manipulando SYSDATE mais e menos dias

SELECT TO_CHAR(SYSDATE, 'dd/mm/yyyy') AS DATA_ATUAL
     , TO_CHAR(SYSDATE+10, 'dd/mm/yyyy') AS MAIS_10
     , TO_CHAR(SYSDATE-10, 'dd/mm/yyyy') AS MENOS_10
  FROM DUAL; 

