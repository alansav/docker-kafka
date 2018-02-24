#!/bin/bash

./configure-zookeeper.sh
./zookeeper-3.4.11/bin/zkServer.sh start

tar -xzf kafka_2.11-1.0.0.tgz

cd kafka_2.11-1.0.0

sed -i 's|^#advertised\.listeners=PLAINTEXT://your\.host\.name:9092$|advertised\.listeners=PLAINTEXT://'"$KAFKA_ADVERTISED_LISTENERS_HOSTNAME"':9092|g' config/server.properties

sed -i 's|^log\.retention\.hours=168$|log\.retention\.hours='"$KAFKA_LOG_RETENTION_HOURS"'|g' config/server.properties

./bin/kafka-server-start.sh config/server.properties
