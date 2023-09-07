#!/bin/bash
security create-keychain -p "$KEYCHAIN_PASSWORD" "$KEYCHAIN_PATH"
security list-keychains -d user -s $(security list-keychains -d user | sed -e s/\"//g) "$KEYCHAIN_PATH"