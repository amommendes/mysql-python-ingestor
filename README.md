# Ingestão de Dados com Python

Esse repo exemplifica a ingestão de dados de uma empresa que produz e vende máquinas industriais.
Os seguintes pontos serão tratados

- (1) Modelagem conceitual dos dados
- (2) Infraestrutura
- (3) Ingestor com Python


### Modelagem conceitual

Abaixo está o diagrama do modelo conceitual:

![Modelo Conceitual](https://github.com/amommendes/mysql-python-ingestor/blob/master/assets/modelo_conceitual.png)

### Infraestrutura

A infraestrutura selecionada é descrita abaixo
- OS: Ubuntu 14.04
- Banco de Dados:
  - MariaDB 10.3 (MySQL): MariaDB Server is one of the most popular database servers in the world. It’s made by the original developers of MySQL and guaranteed to stay open source. Notable users include Wikipedia, WordPress.com and Google.
  - Instalação:
    - A instalação do MariaDB é muito simples, abaixo alguns snippets para instalação em Ubuntu.

    1 - Adicionar repo MariaDB
    ```bash
    $ sudo apt-get install software-properties-common
    $ sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
    $ sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirror.ufscar.br/mariadb/repo/10.3/ubuntu trusty main'
    ```
    2 - Instalar MariaDB
    ```bash
    $ sudo apt-get update
    $ sudo apt-get install mariadb-server
    ```
    3 - Inicialiazar o serviço e configuração inicial
    ```bash
    $ sudo service mysql start
    $ mysql_secure_installation
    ```
 - Python 3.6.3 (com Pandas e SQLAlchemy)
    #### Importante: você precisa instalar algum client do mysql. Aqui estou usando o [MySqldb](http://mysql-python.sourceforge.net/MySQLdb.html) 
    
  # Ingestor com Python
  
  O código do ingestor pode ser encontrado em ingestion/ingestor.py.
  Os códigos SQL para criação das tabelas podem ser encontrados em ingestion/sql/create_tables.sql

  Você pode executar a ingestão da seguinte maneira:
  ```
  python3 ingestion/executor.py "tubos_cognitivo" "localhost" "root" "components" "./data/comp_boss.csv" ","
  ```
  Os parâmetros são:
  - 1: database
  - 2: host do banco de dados
  - 3: usuário do banco (para simplificar estamos usando a senha padrão root)
  - 4: tabela onde os dados serão inseridos
  - 5: path para o arquivo
  - 6: delimitador do arquivo

## Exemplo:

![Query](https://github.com/amommendes/mysql-python-ingestor/blob/master/assets/query.png)

  ### To-do's:
  - Ajustar tipos de dados para não provocar truncates ao realizar inserts
  - A tabela sempre está sendo dropada ao ingerir dados. Optei por deixar assim por hora, para que não seja necessário deletar registros manualmente ao realizar os testes do código. 
