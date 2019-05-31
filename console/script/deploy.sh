#!/usr/bin/env bash
echo "connecting to server: $1"
ssh root@"$1" "curl https://raw.githubusercontent.com/spirit1453/script/master/test/index.sh|bash"
