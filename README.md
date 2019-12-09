No diretorio do projeto, rodar os seguintes comandos:

<h2>Docker</h2>
<ol>
  <li>>docker build .</li>
  <li>>docker-compose up</li>
</ol>

<h2>Dump da tabela</h2>
Quando o projeto estiver rodando, rodar o comando:
<ol>
  <li>>cat ./dump.sql | docker exec -i leads2b_back_db_1 psql -U raphael leads2b</li>
</ol>



