FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=univesp24
COPY init.sql /docker-entrypoint-initdb.d/

FROM python:3.9
WORKDIR /app-correcao-monetaria
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY app app
CMD ["python", "app/app.py"]
