FROM openjdk:8u171-jdk-slim

VOLUME /opt/exercism
WORKDIR /opt/exercism

RUN apt-get update && \
    apt-get install -y curl && \
    curl -Lo /opt/sbt.zip https://piccolo.link/sbt-1.1.6.zip && \
    unzip -d /opt /opt/sbt.zip && \
    apt-get remove -y curl && \
    apt-get clean

ENV PATH=/opt/sbt/bin:$PATH

ENTRYPOINT sbt test
