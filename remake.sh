#!/bin/bash
echo "UNINSTAL:====="
code --uninstall-extension "/Users/fikorobert/ls//vscode/erlang-ls-0.0.32.vsix"

echo "CD:====="
cd /Users/fikorobert/ls-referl/vscode

echo "NPM RUN COMPILE:====="
npm run compile

echo "VSCE:====="
vsce package

echo "INSTALL:====="
code --install-extension "/Users/fikorobert/ls/vscode/erlang-ls-0.0.32.vsix" --force

echo "DONE:====="

# open /Users/fikorobert/Library/Logs/erlang_ls/