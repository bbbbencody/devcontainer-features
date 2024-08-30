#!/bin/sh
set -e

echo "Installing bun"

curl -fsSL https://bun.sh/install | bash

~/.bashrc >> 'export BUN_INSTALL="$HOME/.bun"'
~/.bashrc >> 'export PATH="$BUN_INSTALL/bin:$PATH"'
