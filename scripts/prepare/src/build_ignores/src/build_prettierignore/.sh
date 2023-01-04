#!/bin/bash

WORKDIR=scripts/prepare/src/build_ignores/src/build_prettierignore/src/

rm .prettierignore
{
  echo "$(< "${WORKDIR}".generatedignore)"
  printf "\n"

  printf "### Git ###\n"
  echo "$(< .gitignore)"
} >> .prettierignore
