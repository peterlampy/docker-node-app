curl -v -X PUT -H 'X-Api-Key:' -H 'Content-Type: application/json' https://synthetics.newrelic.com/synthetics/api/v1/monitors/5261dee3-9b74-489b-8ad6-ce1de6cece44 -d '{"frequency": 1, "locations": ["AWS_US_WEST_1","LINODE_US_SOUTH_1"], "name" : "newrelic-node-docker", "type":"SCRIPT_BROWSER", "status" : "DISABLED"}'
docker-compose down
