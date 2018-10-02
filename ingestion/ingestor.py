import pandas as pd
import MySQLdb
import sqlalchemy
import getpass

class insertIntoTable:
    def __init__(self,database,host,user,tabela,path,delimiter):
        self.tabela    = tabela
        self.path      = path
        self.delimiter = delimiter
        self.host      = host
        self.user      = user
        self.database  = database

    def readDF (self):
        df =  pd.read_csv(self.path, delimiter=self.delimiter)
        return df

    def dbConnect(self):
        eng = sqlalchemy.create_engine("mysql+mysqldb://{0}:{1}@{2}/{3}".format(
            self.user,
            "root",
            self.host,
            self.database), echo=False)
        return eng

    def writeRecords(self):
        df  = self.readDF()
        eng = self.dbConnect()
        df.to_sql(self.tabela,eng,index=False, if_exists="replace")


