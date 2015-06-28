#!/usr/bin/env bash

# expect that $1 is a valid json string
body=$1

amqp-publish \
 -u=amqp://$RABBITMQ_1_PORT_5672_TCP_ADDR:$RABBITMQ_1_PORT_5672_TCP_PORT \
 -C=application/json \
 -e=events \
 -b=$body