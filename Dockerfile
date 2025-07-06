FROM alpine:latest
LABEL MAINTAINER="https://github.com/dhanushspatel/dphisher"
WORKDIR /dphisher/
ADD . /dphisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./dphisher.sh"
