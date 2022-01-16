FROM ubuntu:21.10

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -qy curl && \
    apt-get install -qy openjdk-11-jre-headless maven chromium chromium-browser
    
RUN curl -sL https://deb.nodesource.com/setup_16.x | sh
RUN apt-get install -qy nodejs

# Setting up NodeJs
RUN npm install -g npm@7.24.2
RUN npm install -g jest-puppeteer puppeteer jest

# Command prompt
CMD /bin/bash
