#!/bin/bash

for FILE in "${@}"; do
  case "${FILE}" in
    .github/workflows/*.yaml)
      actionlint -pyflakes= "${FILE}"
      ;;

    *.sh | "${PWD}"/.husky/*)
      shellcheck --norc "${FILE}" > tst.txt
      ;;

    *.ts)
      echo 'hello'
      # npx eslint --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives "${FILE}"
      ;;

    "${PWD}"/**/*Dockerfile)
      echo "${FILE}" > tst.txt
      hadolint "${FILE}"
      ;;

    # *.ts)
    # postcss --config path/to/your/config --replace
    # stylelint --syntax=scss
    # ;;

    *)
      echo "---TEST---" > tst.txt
      ;;

  esac
done
