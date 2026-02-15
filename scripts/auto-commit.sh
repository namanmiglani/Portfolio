#!/bin/sh
set -e

message="$1"
if [ -z "$message" ]; then
  message="chore: auto snapshot $(date '+%Y-%m-%d %H:%M:%S')"
fi

git add -A

git commit -m "$message"

git push origin "$(git rev-parse --abbrev-ref HEAD)"
