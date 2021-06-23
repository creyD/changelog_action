#!/bin/bash
# e is for exiting the script automatically if a command fails, u is for exiting if a variable is not set
# x would be for showing the commands before they are executed
set -eux

cd "$GITHUB_WORKSPACE"
#CONTENT=$(git log)
CONTENT=$(git log --oneline --decorate $INPUT_BASE_REF'..'$INPUT_HEAD_REF --format=%B -n 1)
echo ::set-output name=changelog::$CONTENT
