FROM mysql:8.0.20 as mysql
FROM ruby:2.7.2-alpine as dev

ENV APP=/app \
    LANG=C.UTF-8 \
    ENTRYKIT_VERSION=0.4.0 \
    RUNTIME_PACKAGES="linux-headers libxml2-dev make gcc libc-dev openssl nodejs yarn tzdata mysql-dev mysql bash git vim less" \
    DEV_PACKAGES="build-base curl-dev" \
    DOCKERIZE_VERSION="v0.6.1" \
    STRIPE_CLI_VERSION=1.5.12

RUN wget https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && mv entrykit /bin/entrykit \
  && chmod +x /bin/entrykit \
  && entrykit --symlink


RUN apk update && \
    apk upgrade && \
    apk add --no-cache ${RUNTIME_PACKAGES} && \
    apk add --virtual build-dependencies --no-cache ${DEV_PACKAGES} && \
    wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY --from=mysql /usr/bin/mysql /usr/bin/mysql

RUN wget -O stripe.tar.gz https://github.com/stripe/stripe-cli/releases/download/v${STRIPE_CLI_VERSION}/stripe_${STRIPE_CLI_VERSION}_linux_x86_64.tar.gz \
  && tar -zxvf stripe.tar.gz \
  && rm stripe.tar.gz \
  && mv stripe /bin/stripe \
  && chmod +x /bin/stripe

RUN adduser --shell /bin/bash -u 1000 -D ruby
RUN mkdir $APP $APP/node_modules && chown ruby $APP $APP/node_modules
USER ruby

RUN mkdir /home/ruby/.config

WORKDIR $APP

ENV EDITOR vim

RUN gem install bundler -v 2.2.14
RUN bundle config --global retry 5 \
  && bundle config --global jobs 4

FROM dev as app

ENTRYPOINT [ \
    "prehook", \
      "ruby -v",\
      "bundle install", \
      "rm -f tmp/pids/server.pid", \
      "--" \
      ]

FROM dev as webpack_dev_server

ENTRYPOINT [ \
    "prehook", \
      "node -v", \
      "yarn install --check-files", \
      "--" \
      ]
