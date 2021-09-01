--lançando exceções personalizadas
--a oracle disponibiliza números de -20000 até -20999 para personalizarmos
--nossas exceptions
--os blocos permanecem os mesmos 
--porém agora usamos o método
--raise_application_error(numero entre os citados acima, 'texto da exceção');


EXECUTE INCLUIR_CLIENTE('12', 'MERCADO SSS', '40000', 1, 120000);

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
       raise_application_error(-20010, 'Cliente já cadastrado !!!!');

END;