#!/usr/bin/env bash

set -e

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Saving VSCode extensions..."
code --list-extensions > "${BASEDIR}/.config/vscode/extensions"

echo "Saving brew..."
brew bundle dump --file="${BASEDIR}/Brewfile" --force
