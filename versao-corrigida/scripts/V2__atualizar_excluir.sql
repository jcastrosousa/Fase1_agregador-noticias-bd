-- Fase 1, versão corrigida: demonstração de UPDATE e DELETE (DML).
-- WHERE é fundamental para não alterar/excluir todos os registros.

-- Altera apenas a usuária identificada pelo e-mail.
UPDATE usuarios
SET nome = 'Ana Souza Silva'
WHERE email = 'ana@email.com';

-- Exclui apenas a reação de Carlos à notícia de IA.
DELETE FROM reacoes
WHERE id_usuario = (SELECT id_usuario FROM usuarios WHERE email = 'carlos@email.com')
  AND id_noticia = (SELECT id_noticia FROM noticias WHERE link = 'https://exemplo.com/ia');
