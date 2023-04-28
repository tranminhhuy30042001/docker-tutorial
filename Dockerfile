FROM ruby:3.1.2

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

### not use docker-compose
# EXPOSE 3000

# CMD ["rails", "server", "-b", "0.0.0.0"]