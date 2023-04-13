# Flowman Weather Demo

This project demonstrates some capabilities of Flowman. It provides an initial understanding of the project
setup, but also shows how to set up a database for execution metrics, the Flowman History Server and Prometheus & Grafana
to collect and show execution metrics.

The project itself is about extracting, transforming and aggregating weather data, publicly available at
[ftp://ftp.ncdc.noaa.gov/pub/data/noaa/](ftp://ftp.ncdc.noaa.gov/pub/data/noaa/). We will actually work on a publicly
available copy of a subset of the data stored in a S3 bucket at `s3://dimajix-training/data/weather` to simplify the
access.


## 1. Running Flowman in Docker

First, you need to start several Docker containers to provide an environment. Specifically this will start a 
MariaDB server which will be used for three different purposes: Storing the transformed weather data, storing
execution metrics and storing history information.

```shell
docker-compose up mariadb prometheus pushgateway grafana flowman-server
```

## 2. Starting Flowman

When all Docker containers have started successfully, you can then start the Flowman Docker container as follows:
```shell
docker-compose run --rm flowman bash
```
Inside the Docker container, you can either run the full project using `flowexec` or you can also start the
Flowman interactive shell.

### Interactive Shell
For demonstrating the capabilities and for getting known to the most important commands in Flowman, the shell serves
as a good starting point.
```shell
flowshell -f flow
```
Inside the Flowman shell, you then can execute the `main` job via
```shell
job verify main
```

### Running the whole project
As an alternative to the Flowman Shell, you can also directly execute the project with `flowexec`
```shell
flowexec -f flow project run
```

## 3. Inspecting Prometheus
http://localhost:9090
http://localhost:9091


## 4. Inspecting Grafana

http://localhost:3030
