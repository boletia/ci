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

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
    curl -L https://get.rvm.io | /bin/bash -s stable && \
    echo 'source /etc/profile.d/rvm.sh' >> /etc/profile && \
    /bin/bash -l -c "rvm requirements;" && \
    rvm install $(cat .ruby-version) && \
    /bin/bash -l -c "rvm use --default $(cat .ruby-version) && \
    gem install bundler"
