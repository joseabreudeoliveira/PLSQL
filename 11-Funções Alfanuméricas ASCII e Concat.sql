--Funções Alfanuméricas ASCII e Concat

--ASCII retorna o valor ascii do caracter
SELECT ASCII('A'), CHR(65) FROM DUAL; 
SELECT ASCII('a'), CHR(97) FROM DUAL; 

--CONCAT concatena os valores
SELECT CONCAT('JOSE ','ABREU') FROM DUAL;
SELECT CONCAT(CONCAT('JOSE ','ABREU'),' DE OLIVEIRA') FROM DUAL;
