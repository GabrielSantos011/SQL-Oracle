
SET SERVEROUTPUT ON

DECLARE 
  v_ID SEGMERCADO.ID%type:=2;
  v_DESCRICAO SEGMERCADO.DESCRICAO%type;

BEGIN
--pega esse campo (e coloca nessa variavel) dessa tabela nessa condição
    SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID;
    dbms_output.put_line(v_DESCRICAO);
END;


