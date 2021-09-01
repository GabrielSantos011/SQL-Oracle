--Mostrando como tratar exceções
--incluiremos dendtro do bloco begin...end o bloco exception
--esse bloco só é acionado caso haja alguma exceção
--dentro dele colocamos 'when tal exceção (acontecer) then tratamento
--na documentação conseguimos saber o nome das exceções para 
--colocarmos neste tratamento
--a usada nesse vídio é sobre violação de atributo unique
SELECT * FROM CLIENTE;

EXECUTE INCLUIR_CLIENTE('11', 'MERCADO SSS', '40000', 1, 120000);

SET SERVEROUTPUT ON;
EXECUTE INCLUIR_CLIENTE('1', 'MERCADO AAA', '45677', 1, 90000);

create or replace PROCEDURE incluir_cliente
(p_ID IN CLIENTE.ID%type, p_RAZAO_SOCIAL IN CLIENTE.RAZAO_SOCIAL%type,
p_CNPJ IN CLIENTE.CNPJ%type, p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type,
p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type)
IS
   v_CATEGORIA CLIENTE.CATEGORIA%type;
   v_CNPJ CLIENTE.CNPJ%type := p_CNPJ;
BEGIN

   formata_cnpj(v_CNPJ);
   v_CATEGORIA := categoria_cliente(p_FATURAMENTO_PREVISTO);

   INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
   VALUES (p_ID, p_RAZAO_SOCIAL, v_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, v_CATEGORIA);
   COMMIT;
   
EXCEPTION
   WHEN dup_val_on_index THEN
       dbms_output.put_line ('CLIENTE JÁ CADASTRADO !!!!');

END;