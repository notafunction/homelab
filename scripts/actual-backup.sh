#!/bin/bash

# Variables
BACKUP_DIR="/home/matt/homelab/data/actual"
BACKUP_TMP_DIR="/tmp/acutal-backup"
ARCHIVE_NAME="$(date +"%Y-%m-%d").tar.gz"

mkdir -p "$BACKUP_TMP_DIR"

# Create a tar.gz archive of the source directory
tar -Pczf "$BACKUP_TMP_DIR/$ARCHIVE_NAME" "$BACKUP_DIR"

# Rsync the tar.gz archive to the remote server
rclone copy "$BACKUP_TMP_DIR/$ARCHIVE_NAME" actual-backup:/ActualBackup
curl --retry 3 https://hc-ping.com/941bdd41-b8ed-42d1-8680-bc7a7920e777/$?

rm "$BACKUP_TMP_DIR/$ARCHIVE_NAME"
