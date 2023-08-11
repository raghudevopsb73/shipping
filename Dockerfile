FROM        amazoncorretto:17
RUN         yum install unzip -y
RUN         mkdir /app
WORKDIR     /app
COPY        target/shipping-1.0.jar /app/shipping.jar
COPY        run.sh .
ENTRYPOINT  ["bash", "run.sh"]
RUN         curl -O https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-java.zip ; unzip newrelic-java.zip
COPY        newrelic.yaml /app/newrelic/newrelic.yml

