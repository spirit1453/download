#!/usr/bin/env bash
echo "connecting to server: $1"
ssh root@"$1" "java --version || curl https://raw.githubusercontent.com/spirit1453/script/master/task/deployConsole.sh|bash"
open "https://$1"
