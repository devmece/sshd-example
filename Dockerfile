FROM ubuntu

MAINTAINER Ramece Cave <rrcave@gmail.com>

RUN apt-get update && apt-get install -y openssh-server
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D

USER nobody
WORKDIR /tmp
ENV foobar "Sup Homey"

EXPOSE 2222
