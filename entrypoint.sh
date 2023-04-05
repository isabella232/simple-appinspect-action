#!/usr/bin/env bash

ADDON_NAME=$(ls $INPUT_APP_PATH)
ADDON_FULL_PATH="$INPUT_APP_PATH/$ADDON_NAME"

python3 /run_appinspect.py a$INPUT_USERNAME $INPUT_PASSWORD $ADDON_FULL_PATH