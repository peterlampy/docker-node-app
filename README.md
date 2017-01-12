Docker NodeJS Example with Docker Swarm
=====================

### Prerequisites

- Docker CS Engine 1.13.0-cs1-rc1
- DTR 2.2.0 and UCP 2.1.0

## Setup UCP and DTR

Set up UCP and DTR per instructions found here: https://github.com/yongshin/vagrant.

## Create DTR repo

```
docker-datacenter/docker-node-app
```

## Build Docker Image
```  
cd ~/docker-node-app
docker build -t yongshin/docker-node-app .
```

## Start Example Application
```
./start-service.sh
```

## Stop all
In case you need to stop everything run:
```
docker-compose stop
```
