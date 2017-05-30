FROM ubuntu:16.04
MAINTAINER Joshua Noble <acejam@gmail.com>

ENV RPC_USER emercoinrpc
ENV RPC_PASS P@ssw0rd
ENV RPC_ALLOW_IP 127.0.0.1
ENV MAX_CONNECTIONS 15
ENV RPC_PORT 6662
ENV PORT 6661
ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get update && apt-get -y install openssl

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv B58C58F4 && \
    echo "deb http://download.emercoin.com/ubuntu xenial emercoin" > /etc/apt/sources.list.d/emercoin.list && \
    apt-get update && apt-get -y install emercoind && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 8332 8333
VOLUME ["/data/emercoin"]
CMD ["/usr/bin/emercoind", "-datadir=/data/emercoin", "-printtoconsole"]
