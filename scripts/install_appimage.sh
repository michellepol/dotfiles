#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Ошибка: Укажите файл AppImage в качестве аргумента."
    echo "Пример: $0 /путь/к/файлу.AppImage"
    exit 1
fi

APPIMAGE="$1"
APPIMAGE_NAME=$(basename "$APPIMAGE")
APP_NAME="${APPIMAGE_NAME%.*}"

INSTALL_DIR="$HOME/bin"
DESKTOP_ENTRY_DIR="$HOME/.local/share/applications"

mkdir -p "$INSTALL_DIR"
mkdir -p "$DESKTOP_ENTRY_DIR"

echo "Копируем $APPIMAGE_NAME в $INSTALL_DIR..."
cp "$APPIMAGE" "$INSTALL_DIR/$APPIMAGE_NAME"
chmod +x "$INSTALL_DIR/$APPIMAGE_NAME"

DESKTOP_FILE="$DESKTOP_ENTRY_DIR/$APP_NAME.desktop"
echo "Создаём desktop-файл: $DESKTOP_FILE..."

cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=$APP_NAME
Exec="$INSTALL_DIR/$APPIMAGE_NAME" %U
Icon=~/.local/share/icons/$APPIMAGE_NAME
Terminal=false
Categories=Utility;
EOL

# Обновляем кэш .desktop-файлов
update-desktop-database "$DESKTOP_ENTRY_DIR"

echo "Установка завершена! Приложение $APP_NAME доступно в меню приложений."
