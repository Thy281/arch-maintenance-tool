#!/bin/bash

# --- Arch Linux Maintenance Tool ---
# Author: Hugo Lima Quesada Soares
# Description: Automates system updates and cleaning.

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Starting macOS Maintenance...${NC}"

# 1. Atualizar informações do Homebrew
echo -e "\n${GREEN}1. Updating Homebrew...${NC}"
brew update

# 2. Atualizar pacotes instalados
echo -e "\n${GREEN}2. Upgrading installed packages...${NC}"
brew upgrade

# 3. Remover dependências não utilizadas
echo -e "\n${GREEN}3. Removing unused dependencies...${NC}"
brew autoremove

# 4. Limpar cache e versões antigas
echo -e "\n${GREEN}4. Cleaning Homebrew cache...${NC}"
brew cleanup

# 5. Verificar problemas no Homebrew
echo -e "\n${GREEN}5. Checking Homebrew health...${NC}"
brew doctor

# 6. Verificar serviços do Homebrew
echo -e "\n${GREEN}6. Checking Homebrew services...${NC}"
brew services list

echo -e "\n${YELLOW}Maintenance Complete! Stay macOS, stay fast.${NC}"
