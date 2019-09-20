FROM mediawiki:latest

RUN apt-get update -qq && apt-get install -y libthai-dev