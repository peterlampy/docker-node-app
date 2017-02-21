Docker NodeJS Example with Docker Swarm
=====================

### Prerequisites

- Docker CS Engine 1.13.1
- DTR 2.2.0 and UCP 2.1.0

## Setup UCP and DTR

Set up UCP and DTR per instructions found here: https://github.com/yongshin/vagrant-vancouver.

## Create DTR repo

```
engineering/docker-node-app
```

## Build Docker Image
```  
cd ~/docker-node-app
docker build -t yongshin/docker-node-app .
```

## Start Example Application
```
export DTR_IPADDR=172.28.128.4
# Source client bundle
docker stack deploy -f docker-compose.yml nodeapp
```

## Stop all
In case you need to stop everything run:
```
docker stack rm nodeapp
```
