FROM debian:stable-slim

RUN apt-get update && apt-get --no-install-recommends -y install context context-modules

ENTRYPOINT ["context"]
CMD ["--help"]
