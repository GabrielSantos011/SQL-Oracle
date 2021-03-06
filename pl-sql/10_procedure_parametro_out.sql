--QUEREMOS UMA PROCEDURE QUE "RETORNA VALOR"
--NÃO É BEM UM RETORNO, MAS A VARIAVEL QUE PASSAMOS
--COMO PARAMETRO PODEMOS FAZER COM QUE O VALOR
--ALTERADO DURANTE A PROCEDURE CONTINUE NO PROGRAMA PRINCIPAL

--FAREMOS UMA PROCEDURE PARA FORMATAR O CNPJ 

--MOSTRANDO CLIENTES
SELECT * FROM CLIENTE

--MOSTRANDO COMO QUEREMOS A FORMATAÇÃO
SELECT SUBSTR(CNPJ,1,3) || '/' || SUBSTR(CNPJ,4,2) FROM CLIENTE

--CRIAÇÃO DA PROCEDURE

--REPARE QUE PARA COLOCAR O TIPO DA VARIAVEL SEMPRE
--FAZÍAMOS <PARAMETRO IN TIPO> ISSO SIGNIFICA QUE 
--ESTAMOS DIZENDO QUE É UMA VARIAVEL DE ENTRADA
--PORTANTO N PODEMOS ALTERAR VALOR DELA
--EXEMPLO <PARAMETRO:='TESTE'>
--PARA PODERMOS ALTERAR O VALOR DESSA VARIAVEL E ELA
--REFLETIR NO PROGRAMA PRINCIPAL QUE CHAMAR A PROCEDURE 
--DEVEMOS FAZER <PARAMETRO OUT TIPO> PARA DIZER QUE ESSA VARIAVEL É DE SAÍDA

--REPARE ENTÃO QUE ESTAMOS CRIANDO UMA VARIAVEL DE ENTRADA E UMA DE SAÍDA
CREATE OR REPLACE PROCEDURE formata_cnpj
(p_CNPJ IN CLIENTE.CNPJ%type, p_CNPJ_SAIDA OUT CLIENTE.CNPJ%type)
IS
BEGIN
   p_CNPJ_SAIDA := SUBSTR(p_CNPJ,1,3) || '/' || SUBSTR(p_CNPJ,4,2);
END;

--EXXECUTANDO VIA COMANDOS DE SQL DEVELOPER PARA TESTE
VARIABLE g_CNPJ VARCHAR2(10)
VARIABLE g_CNPJ_SAIDA VARCHAR2(10)

EXECUTE :g_CNPJ := '12345'

PRINT :g_CNPJ

EXECUTE formata_cnpj(:g_CNPJ, :g_CNPJ_SAIDA)

PRINT :g_CNPJ
PRINT :g_CNPJ_SAIDA
