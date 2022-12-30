#!/bin/bash

npx tsc && hugo --minify --baseURL "$DEPLOY_PRIME_URL"
