docker network create --driver overlay app-network
docker service create --replicas 1 -p 27017:27017 --network app-network  --mount type=volume,destination=/data/db --constraint 'node.labels.workload == app' --name mongodb clusterhq/mongodb
docker service create --replicas 3 -p 4000 -e MONGODB_SERVICE_SERVICE_HOST=mongodb --network app-network --network ucp-hrm --constraint 'node.labels.workload == app' --label com.docker.ucp.mesh.http=4000=http://nodeapp.david.dtcntr.net --name docker-node-app --with-registry-auth dtr.david.dtcntr.net/engineering/docker-node-app:latest
