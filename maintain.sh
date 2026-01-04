#!/bin/bash

# --- Arch Linux Maintenance Tool ---
# Author: Hugo Lima Quesada Soares
# Description: Automates system updates and cleaning.

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Starting System Maintenance...${NC}"

# 1. Update system packages
echo -e "\n${GREEN}1. Updating system packages...${NC}"
sudo pacman -Syu --noconfirm

# 2. Clean package cache (keep only the last 3 versions)
echo -e "\n${GREEN}2. Cleaning package cache...${NC}"
sudo paccache -r

# 3. Remove orphan packages (unused dependencies)
echo -e "\n${GREEN}3. Removing orphan packages...${NC}"
if [[ -n $(pacman -Qdtq) ]]; then
    sudo pacman -Rs $(pacman -Qdtq)
else
    echo "No orphan packages to remove."
fi

# 4. Check for failed systemd services
echo -e "\n${GREEN}4. Checking for failed services...${NC}"
failed_services=$(systemctl --failed --quiet)
if [[ $failed_services ]]; then
    systemctl --failed
else
    echo "All services are running correctly."
fi

echo -e "\n${YELLOW}Maintenance Complete! Stay Arch, stay fast.${NC}"
