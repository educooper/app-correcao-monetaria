#config.py

import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'chave-secreta'
    SQLALCHEMY_DATABASE_URI = os.environ.get('DATABASE_URL') or 'mysql://univesp24:univesp24@mysql/correcao'
    SQLALCHEMY_TRACK_MODIFICATIONS = False

##
#  USUARIO univesp24
#  SENHA univesp24
#  BANCO correcao
##