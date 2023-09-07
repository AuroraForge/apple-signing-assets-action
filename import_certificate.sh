#!/bin/bash
/bin/bash ./unlock_keychain.sh
ARGS="$CERTIFICATE_PATH -f pkcs8 -P \"$CERTIFICATE_PASSWORD\" -A"

if [ ! -z "$var" ]
then
  ARGS="$ARGS -k \"$KEYCHAIN_PATH\""
fi

security import $ARGS