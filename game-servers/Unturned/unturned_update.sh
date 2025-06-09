#!/bin/bash
set -e

echo "🚀 Updating Unturned Server..."
sudo apt update && sudo apt upgrade -y
~/Unturned/steamcmd/steamcmd.sh +login anonymous +app_update 1110390 +quit
echo "🚀 Unturned Server Update Complete..."