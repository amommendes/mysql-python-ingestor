import sys
from ingestor import insertIntoTable

if len(sys.argv) < 7:
    raise Exception("Quantidade de argumentos inválida: database,host,user,tabela,path,delimiter")
else:
    database,host,user,tabela,path,delimiter = [sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4],sys.argv[5],sys.argv[6]]
    insert = insertIntoTable(database,host,user,tabela,path,delimiter)
    try: 
        insert.writeRecords()
        print("Cognitivo --> Inserção finalizada com sucesso")
    except Exception as error:
        print ("Cognitivo --> Erro ao inserir dados: {0}".format(error))
