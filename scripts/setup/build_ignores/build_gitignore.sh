WORKDIR=scripts/setup/build_ignores/build_gitignore/
TARGET=.gitignore

{
  for FILE in "${WORKDIR}".*ignore; do
    echo "$(< "${FILE}")"
    printf "\n"
  done
  echo "$(< "${WORKDIR}".exceptions)"
} >> "${TARGET}"
# # Required to remove extra trailing newline due to above off-by-one error
# echo "$(< .gitignore)" > .gitignore
