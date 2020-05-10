FROM ubuntu
# Pulling ubuntu image

USER root
# Installing docker and ansible
RUN apt-get update -y && \
    apt-get install docker* ansible -y
# Break for 2 sec
RUN sleep 2
# Copying content from current working directory to container /root/ location
COPY . /root/
# Copying playbook to ansible default location
COPY ansible-playbook.yml /etc/ansible/
# Giving Working Directory path after docker exec.
WORKDIR /root/
# changing file in executable mode
RUN chmod +x docker-loop.sh
# Describing entrypoint
ENTRYPOINT ["ansible-playbook"]
# path of playbook file
CMD ["/etc/ansible/ansible-playbook.yml"]
