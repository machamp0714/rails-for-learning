# Build

FROM ruby:2.7.2-alpine as build

ENV APP=/app \
    LANG=C.UTF-8 \
    BUILD_PACKAGES="linux-headers libxml2-dev make gcc libc-dev openssl nodejs yarn tzdata mysql-dev mysql git build-base"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache ${BUILD_PACKAGES}

RUN adduser -u 1000 -D ruby
RUN mkdir $APP && chown ruby $APP
USER ruby

WORKDIR $APP

RUN gem install bundler -v 2.2.14
RUN bundle config --global retry 5 && \
    bundle config --global jobs 4

COPY --chown=ruby Gemfile Gemfile.lock package.json yarn.lock $APP/
COPY --chown=ruby vendor $APP/vendor

RUN bundle config set path 'vendor/bundle' && \
    bundle config set without 'test development' && \
    bundle
RUN yarn

COPY --chown=ruby Rakefile $APP/
COPY --chown=ruby app $APP/app
COPY --chown=ruby bin $APP/bin
COPY --chown=ruby config $APP/config
COPY --chown=ruby db $APP/db
COPY --chown=ruby public $APP/public
COPY --chown=ruby tmp $APP/tmp

RUN RAILS_ENV=production DATABASE_ADAPTER=nulldb SECRET_KEY_BASE=dummy bundle exec rails assets:precompile

# App

FROM ruby:2.7.2-alpine as app

ENV APP=/app \
    LANG=C.UTF-8 \
    RUNTIME_PACKAGES="tzdata mysql-dev mysql-client curl" \
    DOCKERIZE_VERSION="v0.6.1"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache ${RUNTIME_PACKAGES} && \
    wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN adduser -u 1000 -D ruby
RUN mkdir $APP && chown ruby $APP
USER ruby

WORKDIR $APP

COPY --chown=ruby Gemfile Gemfile.lock $APP/
COPY --chown=ruby Rakefile config.ru $APP/
COPY --chown=ruby app $APP/app
COPY --chown=ruby bin $APP/bin
COPY --chown=ruby config $APP/config
COPY --chown=ruby db $APP/db
COPY --chown=ruby lib $APP/lib
COPY --chown=ruby log $APP/log
COPY --chown=ruby public $APP/public
COPY --chown=ruby storage $APP/storage
COPY --chown=ruby tmp $APP/tmp

COPY --from=build $APP/vendor/bundle $APP/vendor/bundle
COPY --from=build $APP/public/assets $APP/public/assets
COPY --from=build $APP/public/packs $APP/public/packs

RUN bundle config set path 'vendor/bundle' && \
    bundle config set without 'test development'
