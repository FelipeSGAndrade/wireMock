FROM java:alpine

WORKDIR /wiremock

COPY wiremock.jar .

VOLUME /wiremock/data

CMD java -jar wiremock.jar --root-dir data --port=3000 --verbose
