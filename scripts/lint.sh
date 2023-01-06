#!/bin/bash

for FILE in "${@}"; do
  case "${FILE}" in
    .github/workflows/*.yaml)
      actionlint -pyflakes= "${FILE}"
      ;;

    *.sh | .husky/*)
      shellcheck --norc "${FILE}"
      ;;

    *.ts)
      echo 'hello'
      # npx eslint --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives "${FILE}"
      ;;

    Dockerfile)
      hadolint "${FILE}"
      ;;

    # *.ts)
    # postcss --config path/to/your/config --replace
    # stylelint --syntax=scss
    # ;;

    *) ;;

  esac
done
