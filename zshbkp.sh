#!/bin/bash

# Definição de variáveis
SRC_FILE="$HOME/.zshrc"
DEST_DIR="$HOME/mybkp"
BACKUP_FILE="$DEST_DIR/zshrc_$(date +%Y%m%d_%H%M).bkp"

# Copia o arquivo de backup para o destino
cp "$SRC_FILE" "$BACKUP_FILE"

echo "Backup do .zshrc realizado com sucesso: $BACKUP_FILE"
