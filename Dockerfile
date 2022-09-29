FROM ubuntu:22.04

# # Set bash as default shell
SHELL ["/bin/bash", "-c"]

# Update and install sudo
RUN apt-get update && apt-get -y install sudo

# Setup new user and change root to user
RUN adduser --disabled-password --gecos '' ubuntu
RUN adduser ubuntu sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER ubuntu

# Install utils packages
# RUN sudo apt install -y curl wget unzip zip make apt-transport-https gpg vim systemctl openssh-server jq

# Install elastic-search
# RUN sudo apt update && wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg && \
#   echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list && \
#   sudo apt update && sudo apt install elasticsearch -y

# Install Logstash
# RUN sudo apt install -y openjdk-8-jre-headless && \
#   sudo apt update && sudo apt install -y logstash

WORKDIR /home/ubuntu/

# Make container running
# CMD [ "tail", "-f", "/dev/null" ]