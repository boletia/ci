# Using the official ruby image
FROM ruby:2.3.3

# Updating the system packages using apt
RUN apt-get update -qq
RUN apt-get install -y -qq  postgresql-client-9.4 && apt-get clean


#Admin user for operations tasks
RUN useradd -m -s /bin/bash admin
USER admin
WORKDIR /home/admin

# Declare the env vars for the working path
ENV APP_HOME /home/admin/app

ADD . $APP_HOME/

RUN curl -L https://get.rvm.io
