FROM jenkinsci/blueocean:latest
USER root

# becareful.
# add sudo and allow jenkins to treat as root
RUN apk add sudo && echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# override docker command to `sudo docker`
# ref: https://stackoverflow.com/questions/39638772/make-jenkins-run-docker-without-sudo
COPY docker_sudo_overwrite.sh /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker

USER jenkins
