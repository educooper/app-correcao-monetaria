FROM mysql:latest
RUN mysql -u root -punivesp24 -p 3306
RUN grant all privileges on *.* to 'univesp24'@'univesp24' identified by 'univesp24';
RUN flush all privileges;
RUN exit;
EXPOSE 3306

FROM python:3.9

WORKDIR /correcao-mon
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY app app
CMD ["python", "app/app.py"]
