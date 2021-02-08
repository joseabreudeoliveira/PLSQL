--Criando Registros type record

--set serveroutput ON; 

DECLARE
   TYPE REGISTRO_ESTOQUE IS RECORD
   (
      codigo number,
      nome varchar(40)
   );
   DADOS_ESTOQUE REGISTRO_ESTOQUE;
BEGIN
   DADOS_ESTOQUE.CODIGO := 10;
   DADOS_ESTOQUE.NOME := 'JOSE ABREU DE OLIVEIRA';
   DBMS_OUTPUT.PUT_LINE('Código = ' || TO_CHAR(DADOS_ESTOQUE.CODIGO) || ' nome = ' || DADOS_ESTOQUE.NOME);
END;