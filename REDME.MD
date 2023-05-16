# CLUSTER  SWARM e VAGRANT

Uma demostração de Cluster com Swarm e Vagrant para instalação local

Este projeto tem como finalidade criar um ambiente de simulação de um cluster utilizando docker e Swarm para gerenciamento de serviços.

### Cluster

Consiste em computadores, ou nó, ligados que trabalham em conjunto que podem ser percebidos como um unico sistema.

### Docker Swarm

Recurso do Docker que fornece funcionalidades de orquestração de conteiner.

### Cluster Swarm

Grupo de host Docker que podem ser gerenciados por um nó Master.

<picture>
<img alt="Docker Swarm" src="https://raw.githubusercontent.com/docker-library/docs/471fa6e4cb58062ccbf91afc111980f9c7004981/swarm/logo.png">
</picture>
  
## Getting Started

1. Criar um Vagrantfile com as definições de 4 máquinas virtuais. Sendo uma máquina com o nome de master e as outras com os nomes de node01, node02 e node03; 
2. Cada máquina virtual deverá ter um IP fixo; 
3. Todas as MV deverão possuir o Docker pré-instalado; 
4. A máquina com o nome de master deverá ser o nó manager do cluster. 
5. As demais máquinas deverão ser incluídas no cluster Swarm como Workers. 

Como desafio extra, inclui uma imagem personalizada de uma aplicação Java Spring boot API para rodar apartir de um servidor Master com ip 192.168.1.6.
