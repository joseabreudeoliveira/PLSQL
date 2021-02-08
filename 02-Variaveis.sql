-- SELECT * FROM WORKS_ON
--No SQLPLUS faz o insert direto com os valores das variaveis informadas
DEFINE ESSN = 100000002;
DEFINE PNO = 22;
DEFINE HOURS = 8;

INSERT INTO WORKS_ON VALUES (&ESSN, &PNO, &HOURS)
/
commit
/