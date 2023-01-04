#!/bin/bash

WORKDIR="scripts/prepare/src/build_ignores/src/build_gitignore/src/"

# rm ".gitignore"
# {

#   # echo "$(< "${WORKDIR}.alternativeextensionsignore")"
#   # printf "\n"
#   # echo "$(< "${WORKDIR}.assetsignore")"
#   # printf "\n"
#   # echo "$(< "${WORKDIR}.buildartifactsignore")"
#   # printf "\n"
#   # echo "$(< "${WORKDIR}.hugoignore")"
#   # printf "\n"
#   # echo "$(< "${WORKDIR}.netlifyignore")"
#   # printf "\n"
#   # echo "$(< "${WORKDIR}.nodeignore")"
#   # printf "\n"
#   # echo "$(< "${WORKDIR}.secretsignore")"
# } >> ".gitignore"

# for FILE in scripts/prepare/src/build_ignores/src/build_gitignore/src/*; do
#   # cat "$FILE"
#   # echo "$(< "${FILE}")"
#   printf "\n"
# done

for file in temp/*; do
  printf '%s\n' "$file"
  cat "$file"
done
