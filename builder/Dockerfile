FROM alpine:latest

RUN apk update
RUN apk add python2 py2-pip gcc python2-dev musl-dev libffi-dev
RUN apk add openssl-dev ca-certificates linux-headers coreutils git
RUN pip install -U pip
RUN pip install -U ansible
RUN pip install -U shade