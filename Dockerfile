FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -qy curl openssh-client && \
    apt-get install -qy openjdk-11-jre-headless maven chromium-browser
    
RUN curl -sL https://deb.nodesource.com/setup_16.x | sh
RUN apt-get install -qy nodejs

# Setting up NodeJs
RUN npm install -g npm@7.24.2

# Command prompt
CMD /bin/bash
