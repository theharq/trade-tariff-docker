FROM eritiro/baseimage-rbenv-docker:latest

# set $HOME
RUN echo "/root" > /etc/container_environment/HOME

# let's copy and bundle frontend
ADD . /trade-tariff-frontend
# and workdir
WORKDIR /trade-tariff-frontend
RUN cd src && bundle install

# script that will update backend's IP
RUN mkdir -p /etc/my_init.d
ADD backend_ip.sh /etc/my_init.d/backend_ip.sh
RUN chmod +x /etc/my_init.d/backend_ip.sh
