FROM jenkinsci/blueocean:1.4.2

USER root

# https://wiki.alpinelinux.org/wiki/Docker
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk add --update docker

RUN apk add --update shadow \
    && groupadd -g 50 staff \
    && usermod -a -G staff jenkins


#RUN chmod og+rw /run/docker.sock
#USER jenkins
