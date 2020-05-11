FROM ruby:2.5.8-stretch

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

CMD ["bundle", "exec", "rake"]
