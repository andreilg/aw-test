#!/bin/bash

WORKDIR="${PWD}"

for FILE in "${@}"; do
  case "${FILE}" in
    "${WORKDIR}"/.github/workflows/*.yaml)
      actionlint -pyflakes= "${FILE}"
      ;;

    *.sh | "${WORKDIR}"/.husky/*)
      shellcheck --norc "${FILE}" > tst.txt
      ;;

    *.ts)
      echo 'hello'
      # npx eslint --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives "${FILE}"
      ;;

    *Dockerfile)
      hadolint "${FILE}"
      ;;

    # *.scss)
    # postcss --config path/to/your/config --replace
    # stylelint --syntax=scss
    # ;;

    *) ;;

  esac

done
