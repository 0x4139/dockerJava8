FROM debian
MAINTAINER Vali Malinoiu <0x4139@gmail.com>

#install java 8
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list ;
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list;
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886;
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections;
RUN apt-get update;
RUN DEBIAN_FRONTEND=noninteractive apt-get install oracle-java8-installer -y;
