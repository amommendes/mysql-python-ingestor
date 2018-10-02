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
 - Python 2.7 (Pandas e SQLAlchemy) 
    
  # Ingestor com Python
  
  O código do ingestor pode ser encontrado em ingestion/ingestor.py.
  Os códigos SQL para criação das tabelas e permissionamento do banco podem ser encontrados em ingestion/create_tables.sql 
