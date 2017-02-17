FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install greyhawkweather --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["greyweathergen"]
CMD ["--help"]
