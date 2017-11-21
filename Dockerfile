# Using the official ruby image
FROM ruby:2.3.3

# Updating the system packages using apt
RUN apt-get update -qq
RUN apt-get install -y curl gnupg build-essential gawk sqlite3 libgmp-dev libgdbm-dev bison libgmp-dev


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

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
    curl -L https://get.rvm.io | /bin/bash -s stable && \
    echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> .bashrc && \
    $HOME/.rvm/bin/rvm install ruby-2.3.3 && cd $APP_HOME && $HOME/.rvm/bin/rvm gemset list && gem install bundler && \
    bundle update rack-test && bundle install


