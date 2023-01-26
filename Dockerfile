FROM jenkins/jenkins:alpine-jdk17

USER root

RUN apk -v --no-cache --update add \
    nodejs-current npm

RUN apk add --update docker openrc
RUN rc-update add docker boot