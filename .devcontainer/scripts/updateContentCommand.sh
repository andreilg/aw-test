#!/bin/bash

WORKDIR=.devcontainer/scripts/updateContentCommand/

bash <(curl https://raw.githubusercontent.com/rhysd/actionlint/main/scripts/download-actionlint.bash) 1.6.22
bash "${WORKDIR}"install_npm.sh
