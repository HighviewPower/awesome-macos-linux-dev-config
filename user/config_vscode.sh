#!/bin/bash
set -e

SCRIPT_DIR=${SCRIPT_DIR:-$(dirname "$0")}

PACKAGES=$(grep -vE '^\s*#|^\s*$' "$SCRIPT_DIR/config/vscode_extensions.list" | sed 's/#.*//')

# We are going to use VSCode profiles so no need to install these extensions outside of profiles
#for package in $PACKAGES; do
#  echo "Installing VSCode extension: $package"
#  code --install-extension $package
#done
