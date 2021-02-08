--Funções upper lower lpad rpad replace initcap

--UPPER deixa a string com tudo maiusculo
SELECT UPPER('Jose Abreu') FROM DUAL;

--LOWER deixa a string com tudo minusculo
SELECT LOWER('Jose Abreu') FROM DUAL;

--INITCAP deixa maiusculo a primeira letra de cada palavra
SELECT INITCAP('jose abreu') FROM DUAL;
SELECT INITCAP('JOSE ABREU') FROM DUAL;

--LPAD preenche a esquerda com o tamanha e o caracter passado
SELECT LPAD('Jose Abreu','15','0') FROM DUAL;

--RPAD preenche a direita com o tamanha e o caracter passado
SELECT RPAD('Jose Abreu','15','0') FROM DUAL;

--REPLACE substitui um caracter por outro na string
SELECT REPLACE('Bananu','u','a') FROM DUAL;


