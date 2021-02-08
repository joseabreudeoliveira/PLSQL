--SÓ FUNCIONOU NO SQL PLUS
--PL SQL usando VARIABLE SQL PLUS

--Ativar output
set serveroutput ON; 
--Desativa output
--set serveroutput OFF; 

--Criando variaveis
variable situacao varchar2(40);
print situacao;
:situacao := 'A Soma dos numeros é : ';

variable media number;

declare
   numero1  number;
   numero2  number;
   media  number;
begin
   numero1 := 8;
   numero2 := 10;
   media := (numero1 + numero2)/2;
   :situacao := 'A Soma dos numeros é : ' || (numero1 + numero2);
   :media := media;
end;
