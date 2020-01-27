FROM jenkins/jenkins:lts-alpine
USER root
ENV JENKINS_REF /usr/share/jenkins/ref

# install jenkins plugins
COPY ./plugins.txt $JENKINS_REF/
#RUN /usr/local/bin/install-plugins.sh < $JENKINS_REF/plugins.txt

RUN apk add --no-cache --virtual make && \
  apk add --no-cache ca-certificates wget && \
  update-ca-certificates && \
  apk add --no-cache openssl

# install docker, docker-compose
ENV DOCKER_VERSION 19.03.5
RUN curl -fL -o docker.tgz "https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz" && \
  tar --strip-components=1 -xvzf docker.tgz -C /usr/bin

RUN curl -o /usr/local/bin/docker-compose -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-`uname -s`-`uname -m` && chmod +x /usr/local/bin/docker-compose

# add docker group
RUN addgroup -S docker && adduser jenkins docker

VOLUME /var/jenkins
