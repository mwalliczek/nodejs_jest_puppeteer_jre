# Base image for Java 11 JRE, Maven 3.x, NodeJS 16, NPM 7.x and Chromium

Ubuntu based `Docker` image for running apps that need `Java`, `Maven`, `NodeJS`, `NPM` and `Chromium`. Build for `amd64`, `arm64` and `arm/v7`.

## To use as base image

In your `Dockerfile`:

```docker
FROM mwalliczek/nodejs_maven_jre_chromium:latest
```
