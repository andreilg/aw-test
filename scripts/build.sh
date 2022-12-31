#!/bin/bash

npx rimraf dist \
  && npx tsc \
  && hugo --minify --baseURL "$DEPLOY_PRIME_URL"
