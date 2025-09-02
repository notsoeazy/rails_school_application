FROM ruby:3.2.9

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm default-mysql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

COPY . .

EXPOSE 3011

CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0 -p 3011"]