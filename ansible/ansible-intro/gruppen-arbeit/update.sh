#!/bin/sh

LOG_DIR="/var/log/ansible"
FILE_NAME="$(date -u +%Y-%m-%dT%H:%M:%S%Z).log"
LOG_NAME="$LOG_DIR/$FILE_NAME"
REPO_PATH="/opt/ansible-repo"
REPO_URL=""

log() {
  msg="$1"
  echo "$msg" >> "$LOG_NAME"
}

mkdir -p "$LOG_DIR"

touch "$LOG_NAME"

log "Starting ansible update..."


log "Checking if repo available locally..."
if ! test -d "$REPO_PATH";
then
  log "Didn't find repo, so cloning"
  dirname="$(dirname $REPO_PATH)"
  mkdir -p "$dirname"
  git clone "$REPO_URL" "$REPO_URL"
  cd "$REPO_PATH"
else
  log "Updating locally"
  cd "$REPO_PATH"
  git pull
fi

log "Running playbook locally..."
ansible-playbook \
--connection=local \ 
--inventory 127.0.0.1, \
--limit 127.0.0.1 playbook.yml -i ansible_hosts | tee -a "$LOG_NAME"
