FROM ubuntu:latest
MAINTAINER jusrob <jrob48@gmail.com>

ENV LANG en_US.UTF-8
RUN locale-gen $LANG

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC && \
    echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list

RUN apt-get update -q  && \
    apt-get install nzbdrone -qy && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/*

RUN mkdir -p /root/.config

ADD run.sh /run.sh

VOLUME ["/data"]
EXPOSE 8989

CMD ["/run.sh"]
