/*COMANDO DE INSE??O*/
INSERT INTO TB_PRODUTOS
(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1040107','Light - 350 ml - Mel?ncia', 'Lata',
'350 ml','Mel?ncia',4.56);
/*INSER??O DE DOIS ATRIBUTOS*/
INSERT INTO TB_PRODUTOS (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Ver?o - 350 ml - Lim?o', 'PET', '350 ml','Lim?o',3.20);

INSERT INTO TB_PRODUTOS (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Ver?o - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

/*VISUALIZAR TUDO DE TAL TABELA*/
SELECT * FROM TB_PRODUTOS;

/*ATUALIZAR - TAL TABELA - TAIS CAMPOS - CONDI??O PARA ACONTECER*/
UPDATE TB_PRODUTOS SET EMBALAGEM = 'Lata',
PRECO_LISTA = 2.46 
WHERE PRODUTO = '544931';

UPDATE TB_PRODUTOS SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';

/*VISUALIZAR TUDO DE TAL TABELA*/
SELECT * FROM TB_PRODUTOS;