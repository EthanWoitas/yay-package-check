#!/usr/bin/env bash
ORANGE='\033[38;2;255;165;0m'
MINT='\033[38;2;152;251;152m'
RED='\033[38;2;255;99;71m'
RESET='\033[0m'

updates=$(yay -Qu 2>/dev/null)
count=$(printf "%s\n" "$updates" | sed '/^$/d' | wc -l)

if [ "$count" -gt 0 ]; then
    echo -e "${ORANGE}󰏔 Updates available:${RESET} ${RED}$count package(s)${RESET}"
else
    echo -e "${MINT}󰄬 System is up to date${RESET}"
fi