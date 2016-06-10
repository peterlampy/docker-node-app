Docker NodeJS Example with Docker Swarm, Nginx, and Interlock 
=====================

### Prerequisites

- Docker CS Engine 1.11.2-cs3
- DTR and UCP
- Interlock 1.2

## Setup UCP and DTR

Set up UCP and DTR per instructions found here: https://github.com/yongshin/vagrant

## Create DTR repo

```
docker-datacenter/docker-node-app-swarm-nginx
```

## Change New Relic license key (OPTIONAL)
Change the license key found in newrelic.js
```
license_key: '<enter license key from account settings>'
```

## Build Docker Image
```  
cd ~/docker-node-app-swarm-nginx
docker build -t yongshin/docker-node-app .
```

## Configure Interlock for Swarm
```
export SWARM_HOST=tcp://$(docker-machine ip manager):3376
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
