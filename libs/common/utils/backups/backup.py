#!/usr/bin/env python3
"""Simple backup script. Run from repo root."""
import os
import shutil
from datetime import datetime

REPO_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(__file__)))))
BACKUP_DIR = os.path.join(REPO_ROOT, "backups", "gz")
TIMESTAMP = datetime.now().strftime("%Y%m%d_%H%M%S")
ARCHIVE_NAME = f"vibe-coding-guide-backup-{TIMESTAMP}.tar.gz"

def main():
    os.makedirs(BACKUP_DIR, exist_ok=True)
    archive_path = os.path.join(BACKUP_DIR, ARCHIVE_NAME)
    print(f"Creating backup: {archive_path}")
    shutil.make_archive(archive_path.replace(".tar.gz", ""), "gztar", REPO_ROOT)
    print("Done.")

if __name__ == "__main__":
    main()
