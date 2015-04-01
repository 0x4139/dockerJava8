FROM ubuntu:latest
MAINTAINER Vali Malinoiu <0x4139@gmail.com>

#install java 8
RUN mkdir /opt/jre
COPY jre-8u40-linux-x64.gz /tmp/
RUN tar -zxf /tmp/jre-8u40-linux-x64.gz -C /opt/jre
RUN update-alternatives --install /usr/bin/java java /opt/jre/jre1.8.0_40/bin/java 100

#cleanup
RUN rm -rf /tmp/*
