--executando uma função

--via comandos pl sql

SET SERVEROUTPUT ON
DECLARE
   v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
    v_DESCRICAO := obter_descricao_segmercado(2);
    dbms_output.put_line('A Descrição do Segmento de Mercado é ' || v_DESCRICAO);
END;

--via comandos sql developer

VARIABLE g_DESCRICAO VARCHAR2(100)

EXECUTE :g_DESCRICAO:=obter_descricao_segmercado(3)

PRINT g_DESCRICAO
