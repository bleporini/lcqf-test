FROM ruby:bullseye

RUN gem install github-pages
RUN gem install bundler jekyll 
RUN gem install jekyll-feed
ADD . /work
WORKDIR /work
RUN bundle update jekyll
RUN bundle install

CMD bundle install && bundle exec jekyll serve --host=0.0.0.0

