
# APP Correção Monetária
## _Atualização de valores ao seu alcance_

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/educooper/app-correcao-monetaria?color=green"> 
  <img alt="Github language count" src="https://img.shields.io/github/languages/count/educooper/app-correcao-monetaria?color=56BEB8">
 <img alt="Repository size" src="https://img.shields.io/github/repo-size/educooper/app-correcao-monetariacolor=56BEB8">



<p align="center">
  <a href="#dart-about">Sobre</a> &#xa0; | &#xa0; 
  <!-- <a href="#sparkles-features">Features</a> &#xa0; | &#xa0; -->
  <a href="#rocket-technologias">Technologias</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-requisitos">Requisitos</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-instalacao">Instalação</a> &#xa0; | &#xa0;
  <!-- <a href="#memo-license">License</a> &#xa0; | &#xa0; -->
  <a href="#book-autores" target="_blank">Autores/a>
</p>



### :dart: Sobre ###

Calcular a correção monetária de uma forma intuitiva e rápida é essa a missão do APP 


![conceito_1](./view/templates/images/print-project-git.PNG)


### :rocket: Technologias ###

- [Docker](https://www.docker.com/) 
- [Flask](https://flask.palletsprojects.com/en/3.0.x/)
- [Bootstrap](https://getbootstrap.com/)
- [MySQL](https://mariadb.org/)
- [JSON](https://www.json.org/json-pt.html)


### :white_check_mark: Requisitos ###

Para atuarmos neste projeto, necessário 
- [Docker](https://docker.com) ( e também [WSL se for Windows](https://learn.microsoft.com/pt-br/windows/wsl/install)
- [Python](https://www.python.org/downloads/)
- [IDE VsCode ou o VsCodium](https://vscodium.com/)


### :checkered_flag: Instalação ###

```bash
# Clone este projeto onde já gera a pasta 
$ git clone https://github.com/educooper/app-correcao-monetaria

# Acesse a pasta
$ cd app-correcao-monetaria

# Verifique se o o docker está rodando
$ docker -v

# baixe imagens, crie conteineres e inicie a aplicação em apenas um comando 
$ docker-compose up --build

#Accesse-o it on 
$ [http://localhost:5000](http://localhost:5000)

```

### :coffee: Features Adicionais ###

... em breve ...

## exemplo de rota ###

```py
        #app.py

        from flask import Flask
        from flask_sqlalchemy import SQLAlchemy
        from config import Config

        app = Flask(__name__)
        app.config.from_object(Config)
        db = SQLAlchemy(app)

        @app.route('/')
        def index():
            return 'Hello, World!'

        if __name__ == '__main__':
            app.run(debug=True, host='0.0.0.0')
```

### exemplo de json com taxas dos ultimos 5 dias: ###
Fonte: https://api.bcb.gov.br/dados/serie/bcdata.sgs.11/dados/ultimos/5?formato=json

```json
[
  {
    "data": "11/04/2024",
    "valor": "0.040168"
  },
  {
    "data": "12/04/2024",
    "valor": "0.040168"
  },
  {
    "data": "15/04/2024",
    "valor": "0.040168"
  },
  {
    "data": "16/04/2024",
    "valor": "0.040168"
  },
  {
    "data": "17/04/2024",
    "valor": "0.040168"
  }
]
```
### :book: Autores ###
DANIELA MIDORI SIRANO

DANILO RAFAEL

EDUARDO DE SA CUPERTINO

HELOÍSA OLIVEIRA DA SILVA

LUCIANO LEITE DA COVA

MATHEUS DOS ANJOS MELO

MATHIAS NIASHI

MARIA DILMA FERREIRA DE OLIVEIRA


Obrigado a [Univesp](https://univesp.br) pela oportunidade do Presente Projeto.

<a href="#top">Voltar ao Topo</a>

