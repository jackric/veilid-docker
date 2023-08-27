#!/bin/sh
# Ensure veilid-server is running (if already running will happily skip)
docker-compose up -d
# Run CLI inside container to connect to local server
exec docker-compose exec veilid-server veilid-cli