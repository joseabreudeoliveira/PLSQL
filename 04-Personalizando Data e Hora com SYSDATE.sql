--Personalizando Data e Hora com SYSDATE

--S�o Paulo, 16 de dezembro  de 2020, hora.: 14:18:29
SELECT 'S�o Paulo, '
       || TO_CHAR(SYSDATE,'dd')
       || ' de '
       ||  TO_CHAR(SYSDATE,'month') 
       || ' de ' 
       || TO_CHAR(SYSDATE, 'yyyy') 
       || ', hora.: ' 
       || TO_CHAR(SYSDATE,'hh24:mi:ss')
       AS DATA_HORA 
  FROM DUAL; 

