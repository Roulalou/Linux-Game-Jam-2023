#!/bin/sh
echo -ne '\033c\033]0;GameJam 2023\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Save_The_Day.x86_64" "$@"
