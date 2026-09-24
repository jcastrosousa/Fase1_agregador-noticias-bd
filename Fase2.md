erDiagram
    USUARIO ||--o{ INTERACAO_USUARIO : realiza
    NOTICIA ||--o{ INTERACAO_USUARIO : recebe

    NOTICIA ||--o{ NOTICIA_CATEGORIA : possui
    CATEGORIA ||--o{ NOTICIA_CATEGORIA : classifica

    NOTICIA ||--o{ NOTICIA_PALAVRA : possui
    PALAVRA_CHAVE ||--o{ NOTICIA_PALAVRA : identifica

    USUARIO {
        int id_usuario PK
        string nome
        string email
        string senha
    }

    NOTICIA {
        int id_noticia PK
        string titulo
        string resumo
        string url
        string fonte
        datetime data_publicacao
    }

    CATEGORIA {
        int id_categoria PK
        string nome
        string descricao
    }

    NOTICIA_CATEGORIA {
        int id_noticia FK
        int id_categoria FK
    }

    PALAVRA_CHAVE {
        int id_palavra PK
        string nome
    }

    NOTICIA_PALAVRA {
        int id_noticia FK
        int id_palavra FK
    }

    INTERACAO_USUARIO {
        int id_interacao PK
        int id_usuario FK
        int id_noticia FK
        string tipo_interacao
        datetime data_interacao
    }
