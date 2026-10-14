# Projeto: Agregador de Notícias

**Objetivo Geral**
Criar a estrutura de um banco de dados relacional para um agregador de notícias, permitindo o registro de links e o gerenciamento de comentários e reações da comunidade.

**Público-alvo**
Pessoas interessadas em compartilhar fontes de notícias e debater conteúdos em uma plataforma unificada.

**Estrutura do Banco (PostgreSQL)**
* `usuarios`: Dados de acesso e identificação.
* `noticias`: Links e informações das publicações.
* `comentarios`: Textos dos usuários sobre as notícias.
* `reacoes`: Classificação das notícias (relevante / sem interesse).

**Como testar**
Basta executar o script `projeto_noticias.sql` em qualquer ferramenta compatível com PostgreSQL. 
*Nota: A entrega foi feita via arquivo .sql pois a conta de acesso da turma no pgAdmin estava com erro de bloqueio ("Your account is locked") no momento da submissão.*