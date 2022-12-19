#!/bin/bash

npx prettier --config configs/prettier/.prettierrc.yaml --ignore-path configs/prettier/.prettierignore --ignore-unknown --no-error-on-unmatched-pattern --write "$@"
