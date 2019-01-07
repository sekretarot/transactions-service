FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /transactions-service
WORKDIR /transactions-service

COPY Gemfile /transactions-service/Gemfile
COPY Gemfile.lock /transactions-service/Gemfile.lock

RUN bundle install

COPY . /transactions-service