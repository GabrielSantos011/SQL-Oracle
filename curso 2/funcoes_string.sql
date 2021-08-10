--FUNÇÕES PARA STRINGS
SELECT NOME FROM TABELA_DE_CLIENTES;
--DEIXA TUDO MAIÚSCULO
SELECT NOME, UPPER(NOME) FROM TABELA_DE_CLIENTES;
--DEIXA TUDO MINÚSCULO
SELECT NOME, LOWER(NOME) FROM TABELA_DE_CLIENTES;
--deixa as letras inicias de cada palavra maiúsculas
SELECT NOME_DO_PRODUTO, INITCAP(NOME_DO_PRODUTO) FROM TABELA_DE_PRODUTOS;
--concatena
SELECT CONCAT(ENDERECO_1, BAIRRO) FROM TABELA_DE_CLIENTES;
--concatena
SELECT NOME, 'Endereço: ' || ENDERECO_1 || ' ' || BAIRRO || ' ' || CIDADE || ' ' || ESTADO || ', CEP: ' || CEP
FROM TABELA_DE_CLIENTES;
--coloca determinado caracter na esquerda para completar o tamanho definido
SELECT NOME_DO_PRODUTO, LPAD(NOME_DO_PRODUTO, 60, '*') FROM TABELA_DE_PRODUTOS;
--coloca determinado caracter na direita para completar o tamanho definido
SELECT NOME_DO_PRODUTO, RPAD(NOME_DO_PRODUTO, 60, '*') FROM TABELA_DE_PRODUTOS;
--a partir da 3 letra pega 5
SELECT NOME_DO_PRODUTO, SUBSTR(NOME_DO_PRODUTO,3,5) FROM TABELA_DE_PRODUTOS;
--em qual posição está determinado caracter
SELECT NOME_DO_PRODUTO, INSTR(NOME_DO_PRODUTO, '-') FROM TABELA_DE_PRODUTOS;
--limpa espaços a esquerda          from dual = n vem de tavela nenhuma só faz
SELECT LTRIM('           AAAAAAA') FROM DUAL;
--limpa espaços a esquerda       
SELECT RTRIM('AAAAAAA         ') FROM DUAL;
--no lugar de tal palavra coloque isso
SELECT NOME_DO_PRODUTO, REPLACE(REPLACE(NOME_DO_PRODUTO, 'Litro', 'L'),'Ls','L') FROM TABELA_DE_PRODUTOS;