FROM ubuntu:21.10

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -qy curl wget gnupg2 && \
    apt-get install -qy openjdk-11-jre-headless maven

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
# Install Chrome.
RUN apt-get update && apt-get -y install google-chrome-stable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf libxss1 --no-install-recommends

RUN curl -sL https://deb.nodesource.com/setup_16.x | sh
RUN apt-get install -qy nodejs

# Setting up NodeJs
RUN npm install -g npm@7.24.2
RUN npm install -g jest-puppeteer puppeteer jest

# Command prompt
CMD /bin/bash
