FROM ubuntu:trusty

MAINTAINER mcamendoza1 <mcamendoza1@gmail.com>

# Disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Set user to root
USER root

# Set environment variables.
ENV HOME /root

# Set working directory.
WORKDIR /root

RUN apt-get update && \
    apt-get -y install --no-install-recommends software-properties-common && \
    apt-get -y install --no-install-recommends ca-certificates && \
    apt-get -y install --no-install-recommends wget curl zip unzip patch less vim nano psmisc && \
    apt-get -y install build-essential && \
    apt-get -y upgrade && \
    apt-get clean all 
