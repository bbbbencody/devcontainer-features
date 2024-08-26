#!/bin/sh
set -e

echo "Installing bun"

BUN_VERSION=${BUN_VERSION:-undefined}


curl -fsSL https://bun.sh/install | bash -s "bun-v${BUN_VERSION}"

~/.bashrc << 'export BUN_INSTALL="$HOME/.bun"'
~/.bashrc << 'export PATH="$BUN_INSTALL/bin:$PATH"'
