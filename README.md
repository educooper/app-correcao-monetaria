
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
  <a href="#book-autores" target="_blank">Autores</a>
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
- [Docker](https://docker.com) ( e também [WSL se for Windows](https://learn.microsoft.com/pt-br/windows/wsl/install))
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
### :mortar_board: Autores ###

DANIELA MIDORI SIRANO

DANILO RAFAEL

EDUARDO DE SA CUPERTINO

HELOÍSA OLIVEIRA DA SILVA

LUCIANO LEITE DA COVA

MATHEUS DOS ANJOS MELO

MATHIAS NIASHI

MARIA DILMA FERREIRA DE OLIVEIRA


### :book: Referências ###

[Como processar dados de solicitação de entrada no Flask](https://www.digitalocean.com/community/tutorials/processing-incoming-request-data-in-flask-pt) 

##Exemplo de como seria uma função python para capturar e calcular SELIC - by chatGPT I.A.##
```py
from Flask import requests
from datetime import datetime, timedelta

def get_selic_daily_rate(date):
    url = f'https://api.bcb.gov.br/dados/serie/bcdata.sgs.11/dados?formato=json&dataInicial={date}&dataFinal={date}'
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        if data:
            return float(data[0]['valor'])
    return None
# Essas variáveis podem ser capturadas por meio de formulario 
def calculate_interest(start_date, end_date, initial_value):
    current_date = start_date
    accumulated_interest = 0
    while current_date < end_date:
        selic_rate = get_selic_daily_rate(current_date.strftime('%d/%m/%Y'))
        if selic_rate is not None:
            accumulated_interest += selic_rate / 100
        current_date += timedelta(days=1)
    final_value = initial_value * (1 + accumulated_interest)
    return final_value

# Exemplo de uso
# Este pritf pode ser encapsulado em uma tag HTML de saída, em uma página de resultado ou div oculta que ganha status de visible=block ao invés de visible=hidden
# o que voces acham. Não testei estes calculos...

valor_inicial = 1000  # Valor inicial em reais
data_inicio = datetime(2024, 1, 1)  # Data de início
data_atual = datetime(2024, 4, 18)  # Data atual
valor_atualizado = calculate_interest(data_inicio, data_atual, valor_inicial)
print(f"O valor atualizado é: R${valor_atualizado:.2f}")

```

Obrigado a [Univesp](https://univesp.br) pela oportunidade do Presente Projeto.

<a href="#top">Voltar ao Topo</a>

