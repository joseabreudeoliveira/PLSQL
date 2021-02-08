--Criando Sequence start with increment cycle cache

/*
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
CREATE TABLE EMPLOYEE (
				  EMP_SEQ             VARCHAR2(10),
				  FNAME               VARCHAR2(10),
				  MINIT               CHAR(1),
				  LNAME               VARCHAR2(10),
				  SSN                 CHAR(9),
				  BDATE               DATE,
				  ADDRESS             VARCHAR2(25),
				  SEX                 CHAR(1),
				  SALARY              NUMBER(6),
				  SUPERSSN            CHAR(9),
				  DNO                 NUMBER(2)
			);
*/       

--SELECT * FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'EMP_SEQ';
--SELECT EMP_SEQ.CURRVAL FROM DUAL;
--SELECT EMP_SEQ.NEXTVAL FROM DUAL;
--DROP SEQUENCE EMP_SEQ;

--alter sequence EMP_SEQ
create sequence EMP_SEQ
       start with 1           --Indica em qual numero deve começar a seguencia
       increment by 1         --Indica quanto deve ser incrementado na sequencia
       minvalue 1             --Indica o valor minimo para a seguencia
       maxvalue 9999999999    --Indica o valor maximo para a seguencia
       cycle                  --Ao atingir a sequencia maxima reinicia do 1 novamente
--       nocycle                --Ao atingir a sequencia maxima para ede gerar a sequencia
       cache 10;              --Define a quantidade de registros na memoria para melhorar performance
       
       
