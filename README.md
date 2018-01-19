# Docker NodeJS Example with Docker EE 17.06.00

### Prerequisites

- Docker EE 17.06 Standard and Advanced
- DTR 2.4.x and UCP 2.2.x

### Setup UCP and DTR

Set up UCP and DTR per instructions found here: https://github.com/yongshin/vagrant-docker-ee-ubuntu.

### Create DTR repo

```
engineering/docker-node-app
```

### Build Docker Image
```  
export DTR_IPADDR=dtr.local

git clone git@github.com:yongshin/docker-node-app.git
cd ~/docker-node-app
docker build -t $DTR_IPADDR/engineering/docker-node-app .
```

### Start Example Application
```
# Source client bundle
docker stack deploy -c docker-compose.yml nodeapp
```

### Stop all
In case you need to stop everything run:
```
docker stack rm nodeapp
```

### Try deploying app locally for development on Docker CE
```
docker build -t yongshin/docker-node-app .
docker stack deploy -c docker-compose-local.yml nodeapp
```
