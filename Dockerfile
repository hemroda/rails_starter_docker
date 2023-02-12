FROM ruby:3.2.0-alpine

ENV BUNDLER_VERSION=2.4.1

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      readline-dev \
      file \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      tzdata \
      yarn \
      imagemagick

RUN gem install bundler -v 2.4.1

WORKDIR /app

COPY Gemfile Gemfile.lock ./

# builds nokigiri with the libxml2 and libxslt library versions
RUN bundle config build.nokogiri --use-system-libraries

# checks that the gems are not already installed before installing them.
RUN bundle check || bundle install

COPY package.json yarn.lock ./

RUN yarn install --check-files

COPY . ./

ENTRYPOINT ["./bin/docker-entrypoint.sh"]
