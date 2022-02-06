#!/bin/bash
echo "UNINSTAL:====="
code --uninstall-extension "/Users/fikorobert/Projects/ELS_Referl/vscode/erlang-ls-0.0.32.vsix"

echo "CD:====="
cd /Users/fikorobert/Projects/ELS_Referl/vscode

echo "NPM RUN COMPILE:====="
if npm run compile; then
    echo "VSCE:====="
    vsce package

    echo "INSTALL:====="
    code --install-extension "/Users/fikorobert/Projects/ELS_Referl/vscode/erlang-ls-0.0.32.vsix" --force

    echo "DONE:====="
else
    echo "==FAILED=="
fi

# open /Users/fikorobert/Library/Logs/erlang_ls/