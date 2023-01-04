#!/bin/bash

WORKDIR=scripts/prepare/src/build_ignores/src/build_gitignore/src/

rm .gitignore
{
  for FILE in "${WORKDIR}".*ignore; do
    echo "$(< "${FILE}")"
    printf "\n"
  done
} >> .gitignore
# Required to remove extra trailing newline due to above off-by-one error
echo "$(< .gitignore)" > .gitignore
