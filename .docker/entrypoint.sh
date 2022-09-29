#!/bin/bash

# Pacotes Utilitários
sudo apt install -y curl wget unzip zip make apt-transport-https gpg vim systemctl openssh-server jq

# Elasticsearch
sudo apt update
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg 
echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list 
sudo apt update
sudo apt install elasticsearch -y

# Copia o arquivo de configurações do Elasticsearch
# sudo cp $HOME/files/elasticsearch.yml /etc/elasticsearch/

# Logstash
sudo apt install -y openjdk-8-jre-headless
sudo apt update
sudo apt install -y logstash

# Esse comando serve para manter o container executando
tail -f /dev/null