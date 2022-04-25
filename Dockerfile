# syntax=docker/dockerfile:1
FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /receiver-wt-pokemon-mq
COPY Gemfile /receiver-wt-pokemon-mq/Gemfile
COPY Gemfile.lock /receiver-wt-pokemon-mq/Gemfile.lock
RUN bundle install
COPY . /receiver-wt-pokemon-mq

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]