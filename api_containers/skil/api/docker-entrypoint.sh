#!/bin/bash

python3 -u app.py &
java -Dspring.application.name="skil-api" -Deureka.serverUrl="host.docker.internal" -Deureka.serverPort=8761 -Dsidecar.hostname="localhost" -Dsidecar.port=5003 -jar sidecar-0.0.1-SNAPSHOT.jar
