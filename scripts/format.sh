#!/bin/bash

if [[ "$CI" == 'true' ]]; then
  npx prettier --config configs/prettier/.prettierrc.toml --ignore-path configs/prettier/.prettierignore --ignore-unknown --no-error-on-unmatched-pattern --check "$@"
else
  npx prettier --config configs/prettier/.prettierrc.toml --ignore-path configs/prettier/.prettierignore --ignore-unknown --no-error-on-unmatched-pattern --write "$@"
fi
