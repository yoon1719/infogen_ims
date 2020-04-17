#!/bin/bash

python3 -u app.py &
java -Dspring.application.name="emp-api" -Deureka.serverUrl="host.docker.internal" -Deureka.serverPort=8761 -Dsidecar.hostname="localhost" -Dsidecar.port=5001 -jar sidecar-0.0.1-SNAPSHOT.jar
