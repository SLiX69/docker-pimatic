############################################################
# Dockerfile to build Pimatic container images
# Based on Debian
############################################################

# Set the base image to Ubuntu
FROM debian

# File Author / Maintainer
MAINTAINER SLiX

################## BEGIN INSTALLATION ######################
# Install NodeJS v4.4.5
RUN apt-get update
RUN apt-get install -y curl wget
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs

# Install Pimatic Following the Instructions at Pimatic Docs
# Ref: https://pimatic.org/guide/getting-started/installation/
RUN apt-get install -y build-essential git
RUN mkdir /home/pimatic-app
RUN /usr/bin/env node --version
RUN cd /home && npm install pimatic --prefix pimatic-app --production && ls

RUN cd /home/pimatic-app/node_modules/pimatic && npm link
RUN cp /home/pimatic-app/node_modules/pimatic/config_default.json /home/pimatic-app/config.json

RUN wget https://raw.githubusercontent.com/pimatic/pimatic/v0.9.x/install/pimatic-init-d && cp pimatic-init-d /etc/init.d/pimatic
RUN chmod +x /etc/init.d/pimatic
RUN chown root:root /etc/init.d/pimatic
RUN update-rc.d pimatic defaults
RUN sed -i "s/\"password\": \"\"/\"password\": \"pimatic\"/g" /home/pimatic-app/config.json


# Expose port 80
EXPOSE 80
