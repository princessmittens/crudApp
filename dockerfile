FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm nodejs-legacy mysql-client vim
RUN npm install -g phantomjs

RUN mkdir /crud-app
WORKDIR /crud-app

ADD Gemfile /crud-app/Gemfile
ADD Gemfile.lock /crud-app/Gemfile.lock

RUN bundle install
ADD . /crud-app