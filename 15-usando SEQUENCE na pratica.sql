--Criando e manipulando Indices index

/*
SELECT * FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'EMP_SEQ';
SELECT EMP_SEQ.CURRVAL FROM DUAL;
SELECT EMP_SEQ.NEXTVAL FROM DUAL;
DROP SEQUENCE EMP_SEQ;
*/       

SELECT * FROM EMPLOYEE

INSERT INTO EMPLOYEE              
     VALUES ( EMP_SEQ.NEXTVAL,
              'John',             
              'B',                
              'Smith',            
              '123456789',        
              TO_DATE('09-JAN-1955','DD-MON-YYYY'),               
              '731 Fondren, Houston, TX',             
              'M',                 
              30000,              
              '333445555',         
              5                   
              );    
       
       
