#!/usr/bin/env bash
source slack_settings.conf;
curl -X POST -H 'Content-type: application/json' \
--data '{"text":"Your build finished successfully :pray:"}' \
 $WEBHOOK_URL
