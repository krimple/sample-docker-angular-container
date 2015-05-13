FROM ubuntu

## thanks to this post http://blog.abhinav.ca/blog/2014/06/17/develop-a-nodejs-app-with-docker/

MAINTAINER Ken Rimple krimple@chariotsolutions.com

RUN apt-get install -y wget

# Install Node
RUN   \
  cd /opt && \
  wget http://nodejs.org/dist/v0.10.28/node-v0.10.28-linux-x64.tar.gz && \
  tar -xzf node-v0.10.28-linux-x64.tar.gz && \
  mv node-v0.10.28-linux-x64 node && \
  cd /usr/local/bin && \
  ln -s /opt/node/bin/* . && \
  rm -f /opt/node-v0.10.28-linux-x64.tar.gz

RUN \
  npm install -g grunt-cli jshint karma-cli protractor nodemon forever nodebug
# Set the working directory
WORKDIR   /src

CMD ["/bin/bash"]

