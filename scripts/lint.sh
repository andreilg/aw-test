#!/bin/bash

for FILE in "${@}"; do
  case "${FILE}" in
    .github/workflows/*.yaml)
      actionlint -pyflakes= "${FILE}"
      ;;

    .husky/idk)
      shellcheck --norc "${FILE}"
      echo "${FILE}" > tst.txt
      ;;

    *.ts)
      echo 'hello'
      # npx eslint --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives "${FILE}"
      ;;

    *Dockerfile)
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
