No diretorio do projeto, rodar os seguintes comandos:

# Docker
Primeiro comando:
> docker build .
Segundo comando:
> docker-compose up

# Dump da tabela
Quando o projeto estiver rodando, rodar o comando:
> cat ./dump.sql | docker exec -i leads2b_back_db_1 psql -U raphael leads2b


