#!/bin/bash

WORKDIR=scripts/prepare/

bash "${WORKDIR}"install_actionlint.sh
bash "${WORKDIR}"build_ignores.sh
bash "${WORKDIR}"install_husky.sh
