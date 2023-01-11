rm .eslintignore
{
  printf "# Blacklist\n"
  printf "*\n"
  printf "!*/\n"
  printf "\n"
  printf "# Whitelist\n"
  printf "!*.ts\n"
  printf "\n"

  echo "$(< .prettierignore)"
} >> .eslintignore
