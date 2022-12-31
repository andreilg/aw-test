#!/bin/bash

for FILE in "$@"; do
  case "$FILE" in

    *.ts)
      npx eslint --exit-on-fatal-error --max-warnings 0 --report-unused-disable-directives --no-error-on-unmatched-pattern "$FILE"
      ;;

    *) ;;

  esac
done
