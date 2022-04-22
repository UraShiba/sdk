# sdk
## How to work with docker container
* ./sdk.sh 
* docker images
* docker ps
* docker exec -it {CONTAINER_ID} /bin/bash

## How to set up diesel
In container
* echo DATABASE_URL=postgres://admin:admin@172.21.238.3/admin > .env
* diesel setup
* diesel migration run (If you want to migrate again, you should use diesel migration redo)
* diesel print-schema > src/schema.rs

## Settings
* Host: 172.21.238.3
* Port: 5433
* Database: admin
* User: admin
* Password: admin
