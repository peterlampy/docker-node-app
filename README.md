Docker NodeJS Example with Docker Swarm
=====================

### Prerequisites

- Docker CS Engine 1.13.0-cs1-rc1
- DTR 2.2.0 and UCP 2.1.0

This docker compose project is based on the Docker Service Discovery and Load Balancing Reference architecture found here: https://success.docker.com/Datacenter/Apply/Reference_Architecture%3A_Service_Discovery_and_Load-Balancing_with_Docker_Universal_Control_Plane_(UCP)

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
docker-compose up -d
docker-compose logs
docker-compose scale app=4
```

## Stop all
In case you need to stop everything run:
```
docker-compose stop
```
