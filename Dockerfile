FROM ubuntu:17.04
RUN \
    apt-get update && \
    apt-get install -y git && \
    apt-get install -y cloc && \
    rm -rf /var/lib/apt/lists/* 

WORKDIR /data
COPY ./entrypoint.sh /entrypoint.sh
COPY ./config /root/.ssh/config

ENTRYPOINT ["/entrypoint.sh"]

