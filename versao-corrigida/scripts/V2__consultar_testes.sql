-- Fase 1: consultas para conferir os dados cadastrados.
-- SELECT mostra dados. Ele nao altera as tabelas.

-- 1. Ver os registros de cada tabela.
SELECT * FROM usuarios;
SELECT * FROM noticias;
SELECT * FROM comentarios;
SELECT * FROM reacoes;

-- 2. Contar registros de cada tabela.
-- COUNT(*) devolve a quantidade de linhas.
SELECT COUNT(*) AS total_usuarios FROM usuarios;
SELECT COUNT(*) AS total_noticias FROM noticias;
SELECT COUNT(*) AS total_comentarios FROM comentarios;
SELECT COUNT(*) AS total_reacoes FROM reacoes;

-- 3. Mostrar os nomes dos autores e os titulos das noticias comentadas.
-- JOIN relaciona tabelas usando as chaves estrangeiras.
SELECT u.nome, n.titulo, c.texto_comentario
FROM comentarios c
JOIN usuarios u ON c.id_usuario = u.id_usuario
JOIN noticias n ON c.id_noticia = n.id_noticia;
