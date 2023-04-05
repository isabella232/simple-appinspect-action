#!/usr/bin/env bash

ADDON_NAME=$(ls /github/workflow/$INPUT_APP_PATH)
ADDON_FULL_PATH="$INPUT_APP_PATH/$ADDON_NAME"

python3 /run_appinspect.py $INPUT_USERNAME $INPUT_PASSWORD $ADDON_FULL_PATH