FROM ruby

WORKDIR /code/
RUN apt update -qq && apt install -y nodejs
COPY Gemfile* /code/
RUN bundle install

EXPOSE 3000