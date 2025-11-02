#!/usr/bin/bash

# Найдем все файлы с расширениями .cpp и .hpp
files=$(git diff --cached --name-only --diff-filter=ACM | grep -E '\.(cpp|hpp)$')

if [[ -z "$files" ]]; then
   echo "Нет файлов для проверки форматирования"
   exit 0
fi

# Проверим форматирование с помощью clang-format
for file in $files; do
   clang-format -style=file "$file" | diff -u "$file" - > /dev/null
   if [[ $? -ne 0 ]]; then
       echo "Файл $file не соответствует формату. Исправьте форматирование с помощью clang-format."
       echo "Для форматирования напрямую выполните: clang-format -style=file -i <имя_файла>"
       exit 1
   fi
done

echo "Все файлы отформатированы корректно"
exit 0