FROM ruby:2.3

MAINTAINER Michael CLAUDE <miclaude@student.42.fr>

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential libpq-dev nodejs sqlite3 rails && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle update && bundle install
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed
