--utlizando o pl sql como nos exemplos anteriores teríamos que sempre
--trocar o valor das variaveis e execuar novamente 
--mas ao invés disso podemos fazer uma procedure
--que recebe parametros

--comando para criar
CREATE PROCEDURE incluir_segmercado
--parametros
(p_ID IN NUMBER, p_DESCRICAO IN VARCHAR2)
--o is funciona como o declare
IS
--aqui vão as variaveis locais se elas existirem
BEGIN
--código
 INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, upper(p_DESCRICAO));
 COMMIT;
END;

--comando para executar chamando a procedure com os parametros
EXECUTE INCLUIR_SEGMERCADO(3, 'Farmaceuticos');

--conferindo
SELECT * FROM SEGMERCADO;

--outra forma de executar
BEGIN
   INCLUIR_SEGMERCADO(4, 'Industrial');
END;