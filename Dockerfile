FROM ubuntu:latest

MAINTAINER Tim Rodger

# Install dependencies
RUN apt-get update -qq && \
    apt-get -y install \
    amqp-tools


CMD ["/home/app/run.sh"]

COPY src /home/app/

WORKDIR /home/app
