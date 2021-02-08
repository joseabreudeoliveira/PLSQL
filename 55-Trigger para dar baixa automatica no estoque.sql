--Tabela para Venda de Produtos em Estoque

CREATE TABLE ESTOQUE
(
   EST_CODIGO NUMBER,
   EST_NOME VARCHAR2(40),
   EST_TIPO VARCHAR2(2),
   EST_PRECOVENDA NUMBER,
   EST_DATACAD DATE
);

INSERT INTO ESTOQUE (EST_CODIGO, EST_NOME, EST_TIPO, EST_PRECOVENDA, EST_DATACAD)
             VALUES (4, 'Video Aula Delphi', 'UN', 99, SYSDATE);

ALTER TABLE ESTOQUE ADD EST_QUANTIDADE NUMBER;

UPDATE ESTOQUE SET EST_QUANTIDADE = 100;

SELECT * FROM ESTOQUE
----------------------------------------------------------------------------------------------
CREATE TABLE VENDA
(
   VEN_CODIGO NUMBER,
   VEN_NOMEPROD NUMBER,
   VEN_QUANTIDADE NUMBER
);

SELECT * FROM VENDA
SELECT * FROM ESTOQUE
INSERT INTO VENDA VALUES (3,1,23)

DELETE VENDA

CREATE OR REPLACE TRIGGER baixa_estoque
   AFTER INSERT OR UPDATE OF VEN_QUANTIDADE ON VENDA
   FOR EACH ROW
BEGIN
   UPDATE ESTOQUE 
      SET EST_QUANTIDADE = (EST_QUANTIDADE - :NEW.VEN_QUANTIDADE)
    WHERE EST_CODIGO = :NEW.VEN_CODIGO;
END baixa_estoque;

