FROM rust:1.26-slim

VOLUME /opt/exercism
WORKDIR /opt/exercism

ENTRYPOINT cargo test && cargo test -- --ignored
