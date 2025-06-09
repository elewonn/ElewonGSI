#!/bin/bash
set -e
source <(curl -sSL https://download.elewon.net/colors/colors.sh) > /dev/null 2>&1
sudo apt update && sudo apt upgrade -y
clear
sleep 1
echo -e "${GRAY}[${YELLOW}INFO${GRAY}] Preparing installation folders...${NC}"
mkdir -p ~/Unturned > /dev/null 2>&1
mkdir -p ~/Unturned/steamcmd > /dev/null 2>&1
mkdir -p ~/Unturned/unturned_server > /dev/null 2>&1
echo -e "${GRAY}[${GREEN}OK${GRAY}] Installation folders are ready....${NC}"
sleep 1
echo -e "${GRAY}[${YELLOW}INFO${GRAY}] Downloading required libraries...${NC}"
sudo dpkg --add-architecture i386 > /dev/null 2>&1
sudo apt install -y lib32gcc-s1 curl wget tar ca-certificates > /dev/null 2>&1
echo -e "${GRAY}[${GREEN}OK${GRAY}] Required libraries have been downloaded...${NC}"
sleep 1
echo -e "${GRAY}[${YELLOW}INFO${GRAY}] Downloading SteamCMD...${NC}"
cd ~/Unturned/steamcmd > /dev/null 2>&1
if [ ! -f steamcmd.sh ]; then > /dev/null 2>&1
    wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz > /dev/null 2>&1
    tar -xvzf steamcmd_linux.tar.gz > /dev/null 2>&1
    echo -e "${GRAY}[${GREEN}OK${GRAY}] SteamCMD has been downloaded...${NC}"
else
    echo -e "${RED}SteamCMD already exists, it is skipped.${NC}"
fi
sleep 1

echo -e "${GRAY}[${YELLOW}INFO${GRAY}] Downloading Unturned server, Please wait! (AppID: 1110390)...${NC}"
~/Unturned/steamcmd/steamcmd.sh +login anonymous +force_install_dir ~/Unturned/unturned_server +app_update 1110390 validate +quit
cd ~/Unturned/unturned_server > /dev/null 2>&1
sudo wget https://get.elewon.net/steam/unturned/start.sh > /dev/null 2>&1
sudo chmod +x start.sh > /dev/null 2>&1
cd ~/Unturned > /dev/null 2>&1
sudo wget https://get.elewon.net/steam/unturned/unturned_update.sh > /dev/null 2>&1
sudo chmod +x unturned_update.sh > /dev/null 2>&1
echo -e "${GRAY}[${GREEN}OK${GRAY}] The Unturned server has been downloaded successfully.${NC}"
sleep 1
echo
echo -e "${RED}----------------------------------------------------------${NC}"
echo -e "${GRAY}[${YELLOW}INFO${GRAY}]${GREEN} To start the server:${NC}"
echo
echo -e "${MAGENTA}cd ~/Unturned/unturned_server${NC}"
echo -e "${MAGENTA}./start.sh${NC}"
echo -e "${RED}----------------------------------------------------------${NC}"
echo -e "${GRAY}[${YELLOW}INFO${GRAY}]${GREEN} Unturned server update:${NC}"
echo
echo -e "${MAGENTA}cd ~/Unturned${NC}"
echo -e "${MAGENTA}./unturned_update.sh${NC}"
echo
echo -e "${GREEN}📁 To configure the server: ~/Unturned/unturned_server/Servers/DefaultServer${NC}"
