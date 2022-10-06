#!/bin/bash

PATH=/usr/share/elasticsearch/elasticsearch-files/

apt-get update
apt-get install -y curl

curl -H 'Content-Type: application/json' -XPUT 127.0.0.1:9200/shakespeare --data-binary $PATH/@shakespeare-mapping.json
curl -H 'Content-Type: application/json' -XPOST '127.0.0.1:9200/shakespeare/_bulk?pretty' --data-binary $PATH/@shakespeare-data.json