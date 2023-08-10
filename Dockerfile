FROM        amazoncorretto:17
RUN         mkdir /app
WORKDIR     /app
COPY        target/shipping-1.0.jar /app/shipping.jar
COPY        run.sh .
ENTRYPOINT  ["bash", "run.sh"]

