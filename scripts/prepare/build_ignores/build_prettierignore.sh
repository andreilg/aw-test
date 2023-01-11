WORKDIR=scripts/prepare/build_ignores/build_prettierignore/

rm .prettierignore
{
  echo "$(< "${WORKDIR}".generatedignore)"
  printf "\n"

  printf "### Git ###\n"
  echo "$(< .gitignore)"
} >> .prettierignore
