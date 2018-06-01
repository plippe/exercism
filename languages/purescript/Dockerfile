FROM node:10.3-slim

VOLUME /opt/exercism
WORKDIR /opt/exercism

RUN apt-get update && \
    apt-get install -y git && \
    npm install -g purescript@0.11.7 --unsafe-perm=true && \
    npm install -g pulp bower

ENTRYPOINT bower install --allow-root && pulp test
