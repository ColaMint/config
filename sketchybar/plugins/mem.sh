#!/usr/bin/env bash

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

page_size=$(getconf PAGESIZE)

total_memory=$(sysctl -n hw.memsize)

free_pages=$(vm_stat | awk '/Pages (free)/ {sum+=$3} END{print sum}')

free_memory=$((free_pages * page_size))

used_memory_percentage=$(((total_memory - free_memory) * 100 / total_memory))

$SKETCHBAR_BIN --set $NAME label="$used_memory_percentage%"
