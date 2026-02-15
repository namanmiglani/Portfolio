#!/bin/sh
set -e

git config core.hooksPath .githooks

printf "Git hooks path set to .githooks\n"
