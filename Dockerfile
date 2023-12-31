FROM docker.io/jenkins/jenkins:alpine
USER root

# Install sudo
RUN apk add --update sudo

# Install NPM
RUN sudo apk add --no-cache npm

RUN npm install pm2 -g

# Expose ports
EXPOSE 8080 3000
