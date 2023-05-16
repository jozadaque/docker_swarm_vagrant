#!/bin/bash

echo "criando arquivo  Docker-compose.yml"

echo '
version: "3.7"

services:
  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: "Senha123"
      MYSQL_DATABASE: "testedb"
    ports:
      - "3306:3306"
    volumes:
      - /data/mysql:/var/lib/mysql


  java:
    image: jozadaque/my-app-java:2.0
    command: "java -jar /app/users-api.jar"
    ports:
      - '8080:8080'
    depends_on:
      - db

' > docker-compose.yml

echo "Aquivo docker-compose.yml criado"