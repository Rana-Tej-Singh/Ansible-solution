#!/bin/bash

for i in `seq 10`;
do
	docker run -itd --name container$i alpine ping fb.com
done

sleep 2

docker ps
