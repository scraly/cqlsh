# CQLSH

A simple container with CQLSH tool

## Install

```
$ git clone https://github.com/scraly/cqlsh.git
$ docker build -t scraly/cqlsh .
```

## Run Container

```
$ docker run -it scraly/cqlsh bash
```

## Run on Kubernetes Cluster

```
kubectl run cqlsh -it  --image docker.io/scraly/cqlsh:latest bash
```

## Usage

```
cqlsh <host> <port> --cqlversion="3.4.4"
```

## Notes

Manually built to https://hub.docker.com/r/scraly/cqlsh/
