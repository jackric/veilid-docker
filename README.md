# veilid-docker
A `docker-compose` setup for running a *veilid* node to experiment with.

This is an early spike configuration which runs a private node (not WAN listening). Pull requests & forks very much welcomed!

Node ID and local data is persisted between runs in mounted volumes `state` and `data`.

## Run a local veilid-server in a Docker container
```
docker-compose up
```

## Run veilid-cli against local veilid-server
Once the `veilid-server` is running, you can start the CLI client against it with:
```
./veilid-cli.sh
```