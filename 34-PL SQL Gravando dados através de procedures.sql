--PL SQL Gravando dados através de procedures

--show all
--set serveroutput ON; 
--SELECT * FROM EMPLOYEE
--DESCR EMPLOYEE
--execute grava_empoyee
--drop procedure grava_empoyee
--execute grava_empoyee('100','Jose','B','Oliveira','177568173','21/12/2020','Rua Gomes Cardim, 657','M',11700,'177568173',5);

create or replace procedure grava_empoyee
(
V_EMP_SEQ  IN EMPLOYEE.EMP_SEQ%TYPE,  
V_FNAME    IN EMPLOYEE.FNAME%TYPE,  
V_MINIT    IN EMPLOYEE.MINIT%TYPE,  
V_LNAME    IN EMPLOYEE.LNAME%TYPE,  
V_SSN      IN EMPLOYEE.SSN%TYPE,        
V_BDATE    IN EMPLOYEE.BDATE%TYPE,     
V_ADDRESS  IN EMPLOYEE.ADDRESS%TYPE,  
V_SEX      IN EMPLOYEE.SEX%TYPE,      
V_SALARY   IN EMPLOYEE.SALARY%TYPE,   
V_SUPERSSN IN EMPLOYEE.SUPERSSN%TYPE,
V_DNO      IN EMPLOYEE.DNO%TYPE
)
is
begin
   INSERT INTO EMPLOYEE (EMP_SEQ,  
                         FNAME,  
                         MINIT,  
                         LNAME,  
                         SSN,        
                         BDATE,     
                         ADDRESS,  
                         SEX,      
                         SALARY,   
                         SUPERSSN,
                         DNO)
                 VALUES (V_EMP_SEQ,  
                         V_FNAME,  
                         V_MINIT,  
                         V_LNAME,  
                         V_SSN,        
                         V_BDATE,     
                         V_ADDRESS,  
                         V_SEX,      
                         V_SALARY,   
                         V_SUPERSSN,
                         V_DNO);

   dbms_output.put_line('Registro inserido com sucesso.');
end grava_empoyee;

--ROLLBACK


