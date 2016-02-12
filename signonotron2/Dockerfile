FROM ruby:2.2.2

RUN apt-get update -qq && \
  apt-get install -y --no-install-recommends \
  libcurl4-openssl-dev \
  libmysqlclient-dev \
  mysql-client \
  nodejs

RUN mkdir /app
WORKDIR /app
COPY src/Gemfile /app/
COPY src/Gemfile.lock /app/
RUN bundle install

COPY src/ /app/
