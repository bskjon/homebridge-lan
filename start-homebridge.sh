#! /bin/sh

docker network create -d ipvlan \ 
  --subnet=192.168.1.0/24 \ 
  --gateway=192.168.1.1 \ 
  --ip-range=192.168.1.25/30 \ 
  -o ipvlan_mode=l2 \ 
  -o parent=enp0s31f6.16 netmb
  
docker-compose up -d