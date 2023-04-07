#!/bin/bash

docker exec mongo mongo --eval "db.dropDatabase()" free5gc

docker stop $(docker ps -aq)

echo ...

docker rm  -v $(docker ps -aq)


echo clean ok! 
