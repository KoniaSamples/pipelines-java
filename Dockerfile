FROM eclipse-temurin:18-jre-jammy

WORKDIR /app

COPY *.war app.war
COPY *.jar app.jar

ENV JAVA_OPTS="-Xms256m -Xmx512m -Djava.security.egd=file:/dev/./urandom"

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
