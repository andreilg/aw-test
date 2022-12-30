#!/bin/bash

if [[ "$CI" == 'false' && "$NODE_ENV" == 'development' ]]; then
  npx husky install configs/husky/
fi
