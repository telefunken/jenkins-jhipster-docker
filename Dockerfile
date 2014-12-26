FROM jenkins
MAINTAINER Sakke Wiik <sakke.wiik@gmail.com>

USER root

RUN apt-get update -q -q
RUN apt-get upgrade --yes --force-yes

RUN apt-get -y install ruby ruby-dev bzip2 libpcre3 gcc make openssh-server
RUN apt-get -y install nodejs nodejs-dev npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN gem update --system
RUN gem install compass --pre

RUN mkdir -p /var/jenkins_home && chown -R jenkins /var/jenkins_home

VOLUME /var/jenkins_home

USER jenkins