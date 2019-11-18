FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y build-essential

RUN apt-get install -y nodejs

COPY . /application

WORKDIR /application

RUN gem install bundler
RUN bundle install
