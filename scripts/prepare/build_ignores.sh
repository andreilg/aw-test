WORKDIR=scripts/prepare/build_ignores/

bash "${WORKDIR}"build_gitignore.sh
bash "${WORKDIR}"build_prettierignore.sh
bash "${WORKDIR}"build_eslintignore.sh
