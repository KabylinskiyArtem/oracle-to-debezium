#!/bin/bash

#export CLUSTER_ID=$(uuidgen)
#echo "Generated CLUSTER_ID: $CLUSTER_ID"

/etc/confluent/docker/run &

while ! nc -z localhost 9092; do
  sleep 1
done

kafka-topics --create \
  --bootstrap-server localhost:9092 \
  --replication-factor 1 \
  --partitions 1 \
  --topic oracle.DEBEZIUM._ || echo "Topic 'oracle.DEBEZIUM._' already exists"

until curl -s http://debezium-connect:8083/connectors; do
  sleep 5
  echo "Retrying Debezium availability..."
done

sleep 60

/usr/bin/register-connectors.sh

wait
