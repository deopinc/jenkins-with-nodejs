FROM jenkins/jenkins:alpine-jdk17

USER root

RUN apk -v --no-cache --update add \
    nodejs-current npm

RUN apk add py3-pip
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
RUN pip install --upgrade pip
RUN pip install azure-cli


RUN apk add --update docker openrc
RUN rc-update add docker boot
