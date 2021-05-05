#!/bin/bash
# e is for exiting the script automatically if a command fails, u is for exiting if a variable is not set
# x would be for showing the commands before they are executed
set -eux

git log --oneline --decorate $INPUT_HEAD_REF..$INPUT_REF --format=%B -n 1
