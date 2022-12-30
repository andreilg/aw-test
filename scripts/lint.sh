#!/bin/bash

npx eslint --config configs/eslint/.eslintrc.yaml --ignore-path configs/eslint/.eslintignore --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives --no-error-on-unmatched-pattern "$@"