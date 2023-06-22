# keep-running-helloworld

## Build the project

```
mvn clean install
```

## Build the docker image

```
docker build -t keep-running-helloworld .
```

## Run the container with remote jvm debug enabled (jdk5-8)

```
docker run -d -p 5005:5005 -e JAVA_TOOL_OPTIONS="-agentlib:jdwp=transport=dt_socket,address=5005,server=y,suspend=n" keep-running-helloworld
```

## Create a docker swarm service with remote jvm debug enabled (jdk5-8)

```
docker service create --name helloworld --replicas 3 --publish 5005:5005 --env JAVA_TOOL_OPTIONS="-agentlib:jdwp=transport=dt_socket,address=5005,server=y,suspend=n" 192.168.0.101:5000/keep-running-helloworld
```