#!/bin/bash

if [[ "$CI" == "false" && "$NODE_ENV" == "development" ]]; then
  npx husky install
fi
