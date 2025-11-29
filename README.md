# MediCare
#### Este repositório contém os scripts SQL para a criação e manipulação do banco de dados da clínica MediCare.
___

### Estrutura do Repositório

O projeto está dividido em 4 scripts sequenciais para facilitar a execução e manutenção:


| Arquivo            | Descrição                                                                                                                  |
|--------------------|----------------------------------------------------------------------------------------------------------------------------|
| create_tables.sql  | Cria suas 7 tabelas, definindo tipagem, PK's e FK's.                                                                       |
| insert_data.sql    | Insere dados fictícios em todas as tabelas para permitir testes de funcionalidades.                                        |
| queries_select.sql | Contém 5 consultas utilizando JOIN, GROUP BY, ORDER BY e funções de agregação (COUNT, SUM) para extrair informações úteis. |
| update_delete.sql  | Atualizações de cadastros (UPDATE) e remoção segura de registros (DELETE).                                                 |

Banco de dados utilizado: MariaDB (fork do MySQL).
___

### Como testar

#### Utilizando o ambiente local
- Abra seu cliente
- Crie um banco de dados com o nome `medicare_db`.
- Execute os scripts sequencialmente como descritos na tabela de estrutura.

#### Utilizando o Docker
- Execute o comando `docker-compose up`
- Acesse o banco de dados a partir do PMA em `localhost:8080`
- Execute os scripts na UI sequencialmente como descritos na tabela de estrutura.

ps: não é necessário criar o banco de dados, pois o docker já faz a partir do environment pré-configurado em .env.