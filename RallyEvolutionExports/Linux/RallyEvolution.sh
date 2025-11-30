#!/bin/sh
printf '\033c\033]0;%s\a' RallyEvolution
base_path="$(dirname "$(realpath "$0")")"
"$base_path/RallyEvolution.x86_64" "$@"
