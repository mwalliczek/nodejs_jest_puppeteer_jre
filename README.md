# Base image for Java 11 JRE, Maven 3.x, NodeJS 16, NPM 7.x, Jest and Puppeteer (with Chromium)

Debian based `Docker` image for running apps that need `Java`, `Maven`, `NodeJS`, `NPM`, `Jest` and `Puppeteer`. Build for amd64, arm64 and arm/v7.

## To use as base image

In your `Dockerfile`:

```docker
FROM mwalliczek/nodejs_jest_puppeteer_jre:latest
```
