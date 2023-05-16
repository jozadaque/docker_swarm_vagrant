#!/bin/bash

echo "criando swarm"
sudo docker swarm init --advertise-addr=192.168.1.6
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh