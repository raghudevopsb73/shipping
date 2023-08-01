FROM        maven
RUN         mkdir /app
WORKDIR     /app
COPY        shipping.jar /app
ENTRYPOINT  ["java", "-jar", "shipping.jar"]
