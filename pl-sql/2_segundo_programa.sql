--PL/SQL TEM COMANDOS SQL NATIVOS
--PORTANTO PODEMOS FAZER COMANDOS NO NOSSA PROGRMA COMO:

DECLARE
   v_ID NUMBER(5) := 1;
   v_DESCRICAO VARCHAR2(100) := 'Varejo';
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO);
   COMMIT;
END;