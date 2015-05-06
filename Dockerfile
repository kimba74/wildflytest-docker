FROM ubuntu:14.04
MAINTAINER Steffen Krause <steffen.krause@soabridge.com>

USER root

# Install curl and unzip for later use
RUN apt-get install -y curl unzip

# Setting version information of WildflyTest
ENV WFTST_VERSION master

# Downloading WildflyTest content corresponding to version, unpacking it, and cleaning up
RUN  mkdir -p /opt \
           && cd /opt \
           && curl -s https://codeload.github.com/kimba74/wildflytest/zip/$WFTST_VERSION > wildflytest-$WFTST_VERSION.zip \
           && unzip wildflytest-$WFTST_VERSION.zip \
           && rm -f wildflytest-$WFTST_VERSION.zip \
           && mv wildflytest-$WFTST_VERSION wildflytest

# Setting work directory
WORKDIR /opt
