# Using the official ruby image
FROM ruby:2.3.3

# Updating the system packages using apt
RUN apt-get update -qq
RUN apt-get install -y -qq  postgresql-client-9.4 && apt-get clean
