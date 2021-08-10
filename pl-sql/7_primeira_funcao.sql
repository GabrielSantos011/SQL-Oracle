--criando uma função, ou seja um método que retorna algo

--criando função com tal nome
CREATE OR REPLACE FUNCTION obter_descricao_segmercado
--tal parametro
(p_ID IN SEGMERCADO.ID%type)
--e tera esse tipo de retorno
RETURN SEGMERCADO.DESCRICAO%type
--declaração de variaveis locais
IS
  v_DESCRICAO SEGMERCADO.DESCRICAO%type;
--código
BEGIN
  SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = p_ID;
  --retorno
  RETURN v_DESCRICAO;
END;

