/*ALTERANDO A ESTRUTURA DA TABELA E ADICIONANDO CHAVE PRIMARIA*/
ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS PRIMARY KEY (PRODUTO);

/*CASO PRECISE TROCAR DE CAVE PRIMARIA VC DELETA A EXISTENTE (CONCEITUAL 
N DELETA LINHA)*/
ALTER TABLE TB_PRODUTOS DROP PRIMARY KEY;

ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS PRIMARY KEY (PRODUTO);

ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

ALTER TABLE TB_CLIENTES DROP COLUMN DATA_NASCIMENTO;

ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

SELECT * FROM tb_clientes;

SELECT * FROM tb_produtos;

/*DELETANDO LINHA COM A CONDI��O ESPEC�FICA*/
DELETE FROM tb_produtos WHERE produto = '1078680';

SELECT * FROM tb_produtos;