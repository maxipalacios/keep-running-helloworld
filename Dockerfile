FROM adoptopenjdk/openjdk8:alpine
RUN mkdir /opt/app
COPY target/keep-running-helloworld-1.0-SNAPSHOT.jar /opt/app
CMD ["java", "-jar", "/opt/app/keep-running-helloworld-1.0-SNAPSHOT.jar"]
