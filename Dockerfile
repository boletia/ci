# Using the official ruby image
FROM ruby:2.3.3

# Updating the system packages using apt
RUN apt-get update -qq
RUN apt-get install -y -qq  postgresql-client-9.4 && apt-get clean

# Declare the env vars for the working path
ENV APP_HOME /usr/src/app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME


ADD . $APP_HOME/
RUN bundle
