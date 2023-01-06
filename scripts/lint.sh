#!/bin/bash

for FILE in "${@}"; do
  case "${FILE}" in
    *.sh)
      # shellcheck "${FILE}"
      ;;

    *.ts)
      # npx eslint --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives "${FILE}"
      ;;

    Dockerfile)
      # hadolint "${FILE}"
      ;;

    # *.ts)
    # postcss --config path/to/your/config --replace
    # stylelint --syntax=scss
    # ;;

    *) ;;

  esac
done
