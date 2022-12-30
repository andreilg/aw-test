#!/bin/bash

if [[ "$CI" == 'true' ]]; then
  npx prettier --ignore-unknown --no-error-on-unmatched-pattern --check "$@"
else
  npx prettier --ignore-unknown --no-error-on-unmatched-pattern --write "$@"
fi
