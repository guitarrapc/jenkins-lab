FROM jenkinsci/blueocean:latest
USER root

# (becareful) add sudo and allow jenkins to treat as root
RUN apk add sudo && echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

COPY plugins_extra.txt /usr/share/jenkins/ref/plugins_extra.txt
RUN xargs /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins_extra.txt

USER jenkins
