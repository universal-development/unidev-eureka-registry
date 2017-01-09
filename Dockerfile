FROM openjdk:8
VOLUME /tmp
ADD build/libs/unidev-eureka-registry-0.0.1-SNAPSHOT.jar unidev-eureka-registry.jar
RUN sh -c 'touch /unidev-eureka-registry.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /unidev-eureka-registry.jar" ]