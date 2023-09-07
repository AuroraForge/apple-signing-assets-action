#!/bin/bash
keychains=$(security list-keychains -d user)
KEYCHAIN_PATH=$(readlink -f "$KEYCHAIN_PATH")
[[ $keychains =~ (^|[[:space:]])$KEYCHAIN_PATH($|[[:space:]]) ]] && security list-keychains -d user -s $(security list-keychains -d user | sed -e s/\"//g) "$KEYCHAIN_PATH"

security unlock-keychain -p "$KEYCHAIN_PASSWORD" "$KEYCHAIN_PATH"