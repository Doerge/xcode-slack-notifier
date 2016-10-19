#!/usr/bin/env bash
source slack_settings.conf;
curl -X POST -H 'Content-type: application/json' \
--data '{"text":"Your build failed :8ball:"}' \
 $WEBHOOK_URL
