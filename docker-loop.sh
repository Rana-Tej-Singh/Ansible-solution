#!/bin/bash

 
cd /etc/ansible/ && ansible-playbook ansible-playbook.yml
 
sleep 2

for i in `seq 10`;
do
	docker run -itd --name container$i alpine ping fb.com
done
