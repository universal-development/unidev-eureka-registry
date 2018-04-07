FROM openjdk:8
VOLUME /tmp
ADD build/libs/unidev-eureka-registry-0.0.3.jar unidev-eureka-registry.jar
RUN sh -c 'touch /unidev-eureka-registry.jar'
ENV JAVA_OPTS="-server -XX:+UseG1GC -Xmx128M -Dspring.profiles.active=production"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /unidev-eureka-registry.jar" ]