#!/bin/bash

npx prettier --config .prettierrc.toml --ignore-path .prettierignore --ignore-unknown --no-error-on-unmatched-pattern --check "$@"
