--ajustando a procedure para ela ter o mesmo tipo
--e tamanho de um campo de uma tabela

CREATE OR REPLACE PROCEDURE incluir_segmercado
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
 INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, upper(p_DESCRICAO));
 COMMIT;
END;