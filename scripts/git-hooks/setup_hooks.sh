#!/usr/bin/bash

HOOK_SRC="scripts/git-hooks/pre-commit"
HOOK_DEST=".git/hooks/pre-commit"

if [[ ! -f "$HOOK_SRC" ]]; then
   echo "Файл $HOOK_SRC не найден! Проверьте, что скрипт добавлен в проект."
   exit 1
fi

cp "$HOOK_SRC" "$HOOK_DEST"
chmod +x "$HOOK_DEST"
echo "Git-хук pre-commit успешно настроен"