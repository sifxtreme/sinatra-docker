FROM ruby:2.3.1
CMD ["./your-daemon-or-script.rb"]

# Install gems
ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install

# Upload source
COPY . $APP_HOME

# Start server
ENV PORT 4567
EXPOSE 4567
CMD ["ruby", "app.rb"]