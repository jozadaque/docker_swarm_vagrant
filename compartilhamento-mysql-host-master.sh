#!/bin/bash

echo "criando compartilhamento master"

sudo mkdir -p /data/mysql

sudo apt install nfs-server -y

sudo echo "/data/mysql *(rw,sync,subtree_check)" > /etc/exports

sudo exportfs -ar

echo "criado compartilhamento master"