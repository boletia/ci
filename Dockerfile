# Using the official ruby image
FROM ruby:2.3.3

# Updating the system packages using apt
RUN apt-get update -qq
RUN apt-get install -y curl gnupg build-essential gawk sqlite3 libgmp-dev libgdbm-dev bison libgmp-dev


ENV HOME /home/admin
ENV APP_HOME /home/admin/app

#Admin user for operations tasks
RUN groupadd admin && \
    useradd -ms /bin/bash admin -g admin && \
    mkdir -p $APP_HOME

# Declare the env vars for the working path
WORKDIR /home/admin/app
ADD . $APP_HOME/
RUN chown -R admin:admin /home/admin/app

USER admin

RUN gem install bundler && \
    echo "Container Done!"
