FROM jenkinsci/blueocean:latest
USER root

# (becareful) add sudo and allow jenkins to treat as root
RUN apk add sudo && echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# skip setup wizard. you must install plugin and configure admin user follows.
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"

# configure plugins
COPY plugins_extra.txt /usr/share/jenkins/ref/plugins_extra.txt
RUN xargs /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins_extra.txt

# remove REF environment variables. Generic Trigger Plugin used to use REF env.
RUN unset REF

USER jenkins
