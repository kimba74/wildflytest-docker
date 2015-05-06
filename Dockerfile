FROM ubuntu:14.04
MAINTAINER Steffen Krause <steffen.krause@soabridge.com>

USER root

# Install curl and unzip for later use
RUN apt-get install -y curl unzip

RUN  mkdir -p /opt && cd /opt && curl https://codeload.github.com/kimba74/wildflytest/zip/master > wildfly.zip && unzip wildfly.zip && rm -f wildfly.zip

WORKDIR /opt
