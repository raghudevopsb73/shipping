FROM        maven
RUN         mkdir /app
WORKDIR     /app
COPY        target/shipping-1.0.jar /app
COPY        run.sh .
ENTRYPOINT  ["bash", "run.sh"]

