FROM ruby:3.3.0

RUN apt-get update -qq && apt-get install -y \
    nodejs \
    postgresql-client

WORKDIR /chat_app

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]