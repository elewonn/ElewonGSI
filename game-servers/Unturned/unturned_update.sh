#!/bin/bash
set -e
source <(curl -sSL https://download.elewon.net/colors/colors.sh) > /dev/null 2>&1

sudo apt update && sudo apt upgrade -y
clear
echo -e "${GRAY}[${YELLOW}INFO${GRAY}] Updating Unturned Server...${NC}"
~/Unturned/steamcmd/steamcmd.sh +login anonymous +app_update 1110390 +quit
echo -e "${GRAY}[${GREEN}OK${GRAY}] Unturned Server Update Complete...${NC}"