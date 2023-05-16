#!/bin/bash

echo "criando compartilhamento worker"

sudo mkdir -p /data/mysql

sudo apt install nfs-common -y

sudo mount 192.168.1.6:/data/mysql /data/mysql


echo "criado compartilhamento worker"