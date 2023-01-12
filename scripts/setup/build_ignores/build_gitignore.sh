WORKDIR=scripts/setup/build_ignores/build_gitignore/

rm .gitignore
{
  for FILE in "${WORKDIR}".*ignore; do
    echo "$(< "${FILE}")"
    printf "\n"
  done
  echo "$(< "${WORKDIR}".exceptions)"
} >> .gitignore
# # Required to remove extra trailing newline due to above off-by-one error
# echo "$(< .gitignore)" > .gitignore
