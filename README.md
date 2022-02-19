# sdk
## How to work with docker container
* docker network create my-network
* docker network inspect my-network
* ./sdk.sh 
* docker images
* docker ps
* docker exec -it {CONTAINER_ID} /bin/bash

## How to set up diesel
In container
* echo DATABASE_URL=postgres://admin:admin@{Ipv4 address}/admin > .env
* diesel setup
* diesel print-schema > src/schema.rs

## Settings
* Host: Check Ipv4 address with command -> {docker network inspect my-network}
* Port: 5433
* Database: admin
* User: admin
* Password: admin