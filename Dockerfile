FROM ubuntu
# Pulling ubuntu image

USER root
RUN apt-get update -y && \
    apt-get install docker* ansible -y

RUN sleep 2

COPY . /root/
COPY ansible-playbook.yml /etc/ansible/

WORKDIR /root/

RUN chmod +x docker-loop.sh
