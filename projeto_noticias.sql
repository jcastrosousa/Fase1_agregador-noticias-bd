-- 1. CRIAÇÃO DAS TABELAS (DDL)
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE noticias (
    id_noticia SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    link TEXT NOT NULL,
    fonte VARCHAR(100) NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comentarios (
    id_comentario SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_noticia INT NOT NULL,
    texto_comentario TEXT NOT NULL,
    data_comentario TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_noticia) REFERENCES noticias(id_noticia)
);

CREATE TABLE reacoes (
    id_reacao SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_noticia INT NOT NULL,
    tipo_reacao VARCHAR(20) CHECK (tipo_reacao IN ('relevante', 'sem interesse')),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_noticia) REFERENCES noticias(id_noticia)
);

-- 2. INSERÇÃO DE DADOS (DML)
INSERT INTO usuarios (nome, email) VALUES
('Ana Souza', 'ana@email.com'),
('Carlos Eduardo', 'carlos@email.com');

INSERT INTO noticias (titulo, link, fonte) VALUES
('Avanços na Inteligência Artificial em 2026', 'http://exemplo.com/ia', 'TechNews'),
('Nova descoberta na astronomia', 'http://exemplo.com/astro', 'Ciência Hoje');

INSERT INTO comentarios (id_usuario, id_noticia, texto_comentario) VALUES
(1, 1, 'Muito interessante essa evolução das IAs!'),
(2, 2, 'Incrível como o universo é vasto.');

INSERT INTO reacoes (id_usuario, id_noticia, tipo_reacao) VALUES
(1, 1, 'relevante'),
(2, 1, 'sem interesse'),
(1, 2, 'relevante');

-- 3. CONSULTAS DE TESTE (DQL)
SELECT * FROM noticias;

SELECT usuarios.nome, comentarios.texto_comentario
FROM usuarios
INNER JOIN comentarios ON usuarios.id_usuario = comentarios.id_usuario;

SELECT usuarios.nome, reacoes.tipo_reacao
FROM usuarios
INNER JOIN reacoes ON usuarios.id_usuario = reacoes.id_usuario
WHERE reacoes.tipo_reacao = 'relevante';