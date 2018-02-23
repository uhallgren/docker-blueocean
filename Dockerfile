FROM jenkinsci/blueocean:1.4.2


USER root

COPY jenkins.sh /usr/local/bin/jenkins.sh
RUN apk add sudo \ 
    && echo 'jenkins ALL=NOPASSWD: ALL' > /etc/sudoers.d/developer

USER jenkins 


