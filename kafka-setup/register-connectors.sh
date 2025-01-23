#!/bin/bash

until curl -s http://debezium-connect:8083/connectors; do
  sleep 5
  echo "Retrying Kafka Connect availability..."
done

for connector in /kafka/connectors/*.json; do
  if [ -f "$connector" ]; then
    echo "Registering connector: $connector"
    curl -X POST -H "Content-Type: application/json" --data @"$connector" http://debezium-connect:8083/connectors
  else
    echo "No connector JSON files found in /kafka/connectors."
  fi
done

echo "Finished registering connectors."
