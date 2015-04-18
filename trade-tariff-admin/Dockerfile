FROM eritiro/baseimage-rbenv-docker:latest

# make sure we have libmysqlclient-dev
RUN apt-get install -qqy libmysqlclient-dev

# install mysql-client (will be used by `db:create` task)
RUN apt-get install -qqy mysql-client

# clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set $HOME
RUN echo "/root" > /etc/container_environment/HOME
# and workdir
RUN mkdir /trade-tariff-admin
WORKDIR /trade-tariff-admin

# let's copy and bundle admin
ADD . /trade-tariff-admin
RUN cd src && bundle install

# add tariff IPs
RUN mkdir -p /etc/my_init.d
ADD tariff_ips.sh /etc/my_init.d/tariff_ips.sh
RUN chmod +x /etc/my_init.d/tariff_ips.sh
