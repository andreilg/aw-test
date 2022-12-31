#!/bin/bash

for FILE in "$@"; do
  case "$FILE" in

    *.ts)
      npx eslint --config .eslintrc.yaml --ignore-path .eslintignore --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives --no-error-on-unmatched-pattern "$FILE"
      ;;

    # *.ts)
    # postcss --config path/to/your/config --replace 
    # stylelint --syntax=scss
    # ;;

    *) ;;

  esac
done
