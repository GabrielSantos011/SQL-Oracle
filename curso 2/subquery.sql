--SUBQUERY � QND USAMOS UM OUTRO SELECT COMO PARAMETRO

--OLHA UM EXEMPLO DE COMO FAZEMOS ANTES DA SUBQUERY

--AQUI PEGAMOS OS BAIRROS DOS VENDEDORES
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

--QUEREMOS SABER OS CLIENTES QUE MORAM NO MESMO BAIRRO
--ENT�O INCLUIMOS NA M�O, SEMPRE QUE INSERIR UM VENDEDOR
--NOVO TEMOS QUE VIR ALTERAR
SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO
IN ('Tijuca','Santo Amaro','Jardins','Copacabana','ASASAS');

--POR�M PARA TORNAR ISSO MAIS DINAMICO PODEMOS FAZER A SUBQUERY
--MOSTRA TUDO DA TABELA DE CLIENTESQNDO O BAIRRO ESTIVER NESSE CONJUNTO
SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO
IN (SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);


--ESSA PR�XIMA SITUA��O TB PODE SER SUBSTITU�DA, OBSERVE:
SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM
HAVING SUM(PRECO_DE_LISTA) <= 80;

SELECT Z.EMBALAGEM, Z.SOMA_PRECO FROM
(SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM) Z
WHERE Z.SOMA_PRECO <= 80;