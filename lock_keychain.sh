#!/bin/bash
KEYCHAIN_PATH=$(readlink -f "$KEYCHAIN_PATH")
security lock-keychain "$KEYCHAIN_PATH"