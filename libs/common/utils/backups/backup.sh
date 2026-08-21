#!/bin/bash
# One-click backup script
set -e

REPO_ROOT="$(cd "$(dirname "$0")/../../../.." && pwd)"
BACKUP_DIR="$REPO_ROOT/backups/gz"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="vibe-coding-guide-backup-$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"
echo "Creating backup: $BACKUP_DIR/$ARCHIVE_NAME"
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" -C "$REPO_ROOT" --exclude='.git' --exclude='backups/gz' .
echo "Done."
