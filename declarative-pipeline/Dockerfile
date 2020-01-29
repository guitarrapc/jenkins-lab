FROM jenkinsci/blueocean:latest
USER root

# (becareful) add sudo and allow jenkins to treat as root
RUN apk add sudo && echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
