#!/usr/bin/bash

# Настройка pre-commit хука
PRECOMMIT_SRC="scripts/git-hooks/pre-commit"
PRECOMMIT_DEST=".git/hooks/pre-commit"

if [[ ! -f "$PRECOMMIT_SRC" ]]; then
   echo "Файл $PRECOMMIT_SRC не найден! Проверьте, что скрипт добавлен в проект."
   exit 1
fi

cp "$PRECOMMIT_SRC" "$PRECOMMIT_DEST"
chmod +x "$PRECOMMIT_DEST"
echo "Git-хук pre-commit успешно настроен"

# Настройка commit-msg хука
COMMITMSG_SRC="scripts/git-hooks/commit-msg"
COMMITMSG_DEST=".git/hooks/commit-msg"

if [[ ! -f "$COMMITMSG_SRC" ]]; then
   echo "Файл $COMMITMSG_SRC не найден! Проверьте, что скрипт добавлен в проект."
   exit 1
fi

cp "$COMMITMSG_SRC" "$COMMITMSG_DEST"
chmod +x "$COMMITMSG_DEST"
echo "Git-хук commit-msg успешно настроен"