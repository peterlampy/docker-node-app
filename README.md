Docker NodeJS Example with Docker Swarm
=====================

### Prerequisites

- Docker CS Engine 1.11.2-cs3
- DTR 2.0.1 and UCP 1.1.1
- Interlock 1.2

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

## Configure Interlock for Swarm
```
export SWARM_HOST=tcp://${UCP_IPADDR}:3376
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
