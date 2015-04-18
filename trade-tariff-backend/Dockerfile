FROM eritiro/baseimage-rbenv-docker:latest

# install mysql-client (will be used by `db:create` task)
RUN apt-get install -qqy mysql-client

# make sure we have libcurl and libmysqlclient-dev
RUN apt-get install -qqy libcurl4-openssl-dev libmysqlclient-dev

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set $HOME
RUN echo "/root" > /etc/container_environment/HOME
# and workdir
RUN mkdir /trade-tariff-backend
WORKDIR /trade-tariff-backend

# let's copy and bundle backend
ADD . /trade-tariff-backend
RUN cd src && bundle install

# add tariff IPs
RUN mkdir -p /etc/my_init.d
ADD tariff_ips.sh /etc/my_init.d/tariff_ips.sh
RUN chmod +x /etc/my_init.d/tariff_ips.sh
