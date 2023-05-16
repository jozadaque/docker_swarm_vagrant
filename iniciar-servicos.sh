#!/bin/bash
echo "criando stackDIO"
sudo docker stack deploy  --compose-file docker-compose.yml stackDIO

echo "criado stackDIO"
