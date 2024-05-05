# Scraping e Armazenamento de Dados Litúrgicos

Este é um script Python simples para extrair dados do calendário litúrgico de um site e armazená-los em um banco de dados PostgreSQL.

## Como Usar

1. Certifique-se de ter o Docker e o Docker Compose instalados em sua máquina.
2. Clone este repositório.
3. Construa e inicie os contêineres com `docker compose up --build`. Isso também instalará as dependências necessárias.
4. O script `main.py` será executado automaticamente pelo contêiner da aplicação, utilizando as configurações de conexão ao banco de dados definidas no `docker-compose.yml`.

## Funcionalidades

- Conexão com o Banco de Dados: Estabelece conexão com o banco de dados principal e cria um novo banco de dados para os dados litúrgicos.
- Criação da Tabela: Cria uma tabela no banco de dados para armazenar os dados litúrgicos.
- Web Scraping: Extrai os dados litúrgicos de um site e os insere na tabela do banco de dados.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests. Deus abençoe!

