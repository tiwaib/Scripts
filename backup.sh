#!/bin/bash
# Backup script

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
DATE=$(date +%Y-%m-%d)
FILENAME="backup-$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"

echo "Backup of $SOURCE_DIR completed: $FILENAME"
