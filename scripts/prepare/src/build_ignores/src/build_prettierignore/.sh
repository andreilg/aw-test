#!/bin/bash

WORKDIR="scripts/prepare/src/build_ignores/src/build_prettierignore/src/"

rm ".prettierignore"
{
  echo "$(< "${WORKDIR}.alternativeextensionsignore")"
  printf "\n"

  printf "### Git ###"
  echo "$(< ".gitignore")"
} >> ".prettierignore"
