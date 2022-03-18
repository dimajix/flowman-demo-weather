# 1. Introduction


# 2. Running Flowman in Docker

## 2.1 Preparing the Environment

Since we will read from S3, you need some valid S3 credentials
AWS_PROXY_HOST=
AWS_PROXY_PORT=

## 2.2 Start MS SQL Server
```shell
docker-compose up -d sqlserver
```

## 2.3 Starting Flowman
```shell
docker-compose run --rm flowman bash

cd /opt/flowman
```

# 3. Running the Example

## Running the whole project

```shell
flowexec -f flow project run
```

## Interactive Shell

```shell
flowshell -f flow
```
