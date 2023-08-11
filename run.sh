source /data/params
java -javaagent:/app/newrelic/newrelic.jar -XX:MaxRAMPercentage=95.0 -XX:InitialRAMPercentage=70 -jar /app/shipping.jar

