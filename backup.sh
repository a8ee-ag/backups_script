#! /bin/bash

DIRS=(
    "/etc"
    "/var/www"
)

BACKUP_DIR="/backup"

CURRENT_DATE=$(date +"%d-%m-%Y_%H-%M-%S")

ARCHIVE_NAME="backup_$CURRENT_DATE.zip"

ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

sudo zip -rq "$ARCHIVE_PATH" "${DIRS[@]}"

# Проверяем успешность операции
if [ $? -eq 0 ]; then
    echo "Резервное копирование успешно завершено. Архив сохранен: $ARCHIVE_PATH"
else
    echo "Ошибка при создании архива."
fi