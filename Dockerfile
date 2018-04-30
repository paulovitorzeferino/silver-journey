FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /silver-journey
WORKDIR /silver-journey
COPY Gemfile /silver-journey/Gemfile
COPY Gemfile.lock /silver-journey/Gemfile.lock
RUN bundle install
COPY . /silver-journey
