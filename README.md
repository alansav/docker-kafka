# docker-kafka
A simple Docker image aimed at developers wanting to run a Kafka server in a development environment.

## Usage
Start a docker container:

```docker run -d -p 2181:2181 -p 9092:9092 alansavage/kafka

This will start a container running Kafka which you can use when writing either Produer or Consumer software for a Kafka server.

### Configuration

The container can be configures using the following environment variables:

| Environment Variable Name | Default Value | Description |
| ------------------------- | ------------- | ----------- |
| KAFKA_ADVERTISED_LISTENERS_HOSTNAME | 127.0.0.1 | Sets the hostname for the advertised listener. You should not need to change this in a single broker instance. |
| KAFKA_LOG_RETENTION_HOURS | -1 | Sets the Kafka log to be retained indefinitely. This differs from the Kafka default of 168 which can be frustrating in development when logs start being deleted which are over a week old. |
