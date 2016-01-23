FROM alpine:latest

MAINTAINER Wes Widner <wes@werxltd.com>

RUN apk update && apk add python py-pip py-crypto unzip

RUN pip install --upgrade pip && pip install rpyc pefile pyyaml

ADD https://github.com/n1nj4sec/pupy/archive/master.zip /pupy.zip

RUN unzip pupy.zip && mv pupy-master pupy && rm pupy.zip && apk del unzip

WORKDIR /pupy/pupy