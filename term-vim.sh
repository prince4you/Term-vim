#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ASCII Art with Colors
show_logo() {
    echo -e "${MAGENTA}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢞⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀ ⠀⠀⣀⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣦⣀⣠⠞⠁⢸⢀⠙⢦⡀⠀⠀⠀⣠⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⡀⠀
⠀⠀⠀⠀⢰⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⣧⢀⠴⢃⠓⣌⠠⠙⢦⡀⣾⡟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣉⣻⡆
⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣸⣿⠄⢣⡉⠖⡄⢓⢅⠂⡙⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⣿⡇
⠀⠀⠀⠀⢸⣇⠐⡤⢀⢤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⣀⢀⠠⣊⣼⣿⠘⣄⠚⢤⠉⡖⡨⢑⣄⢿⣇⠀⣀⢀⢠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡘⣰⣿⠇
⠀⠀⠀⠀⠀⠙⠿⠿⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⢤⣿⡿⠿⢟⠡⣊⠤⣉⠆⢣⠔⡡⢣⠄⡙⢿⢿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠘⣤⣾⠟⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠆⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⠴⣿⡧⢉⠆⡱⡐⢢⠡⠚⡄⢎⡑⢢⠑⣌⣶⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡐⢤⣿⠟⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⡔⣿⣇⠣⣘⠡⠜⡡⢊⠕⡨⢂⠜⣠⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣡⣼⠿⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡌⣿⣇⠒⢤⡉⣒⠡⢃⠜⡠⣃⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢔⣡⣾⠿⠉⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⡌⣿⡧⢉⠆⠴⡁⢎⠰⣨⣶⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⣡⣾⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⡌⣿⣇⠣⣘⠡⡘⣤⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣑⣾⡿⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠱⡌⣿⡧⠑⡄⣣⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢊⣴⣿⠛⣄⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣿⠇⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⡘⣿⣇⣣⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢊⣴⣿⠟⣠⠙⣄⠓⣅⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⠞⠁⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢢⠱⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢊⣴⣿⠟⢡⡘⠤⡩⢐⢣⡐⠓⣅⠈⠳⣄⠀⠀⠀⠀⠀
⠀⠀⠀⣠⠞⠁⢀⢼⣿⠆⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢢⢙⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢊⣴⣿⠟⡡⢊⠖⣈⠖⡡⢃⠆⣉⠖⡨⢑⢆⠈⠳⣄⠀   ⠀
⠀⣠⠞⠁⢀⡴⢉⠼⣿⡃⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢊⣴⣿⠟⡡⢊⡔⢣⠘⡄⠎⡔⡡⠚⡄⢎⡑⢣⢌⠱⢆⠈⠳⣄⠀
⢾⣷⣶⣶⡁⡆⢇⢸⣿⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⠰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢏⣿⡿⢁⠎⡁⢇⠸⣀⢉⢰⠉⡰⢁⠷⡈⢆⡸⢰⠈⠶⣈⣷⣶⣾⡷
⠀⠙⢷⣭⢟⣮⡰⢸⣿⡅⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⢲⣵⡿⡋⢆⡩⢒⡉⢆⠱⢂⠥⢊⠴⣁⠣⢂⡍⠢⠔⡡⢊⣴⡿⣯⡿⠋⠀
⠀⠀⠀⠙⢿⣶⡹⢮⣿⠆⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡶⠷⢾⣿⡏⢢⠱⢌⡰⢡⡘⢌⢒⡉⢆⣉⠒⠤⢃⠣⢌⠱⣈⣴⣿⣻⡿⠋⠀⠀⠀
⠀⠀⠀⠀⠀⠙⢿⣽⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⢠⡿⡑⢢⢃⠲⢄⠣⣘⠰⢊⠔⡊⢤⠙⡌⡌⠱⣈⡶⣟⣿⡾⠋⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠙⣿⡅⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢹⣿⣤⣤⣤⡾⠗⣈⠦⡑⢪⢄⡓⠤⠓⡌⣒⡉⠦⡑⠰⣈⣵⡾⣿⡿⠋⠀⠀⠀⠀⠀Tool Name: Term-vim⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣢⣼⣿⠟⣉⣍⠩⢔⠣⣌⢢⢑⠢⣌⠘⡌⢓⡘⢤⡘⢤⡁⣧⣿⢯⡿⠋⠀⠀⠀⠀⠀⠀⠀Creator: Mr_Sunil⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢒⣾⣛⣛⠛⠛⠛⢛⣿⠃⣶⣟⣛⠛⠛⠛⠻⣮⣦⣼⡾⠛⠛⠛⢿⣿⣋⣠⡾⠛⠛⠛⠛⣧⡀⠀Version: 1.0
⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢊⣴⣿⠟⣻⡟⠀⠀⠀⣾⡇⢡⠙⣿⡏⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢚⣤⣿⠟⡡⢺⣿⠀⠀⠀⣰⡟⢄⠣⣸⡿⠁⠀⢀⣾⠛⡟⣻⣿⡟⠀⠀⢠⡿⠛⠛⠛⣿⠃⠀⠀⣰⡏⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢘⣰⣿⠟⣡⠚⢄⣿⠃⠀⠀⢀⣿⠃⡜⢠⣿⠇⠀⠀⣸⡟⣤⣿⣿⡿⠀⠀⠀⣾⠃⠀⠀⣰⡏⠀⠀⢀⣿⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⡆⠐⠀⠀⠀⠀⠀⠀⠀⢀⢄⣱⣾⡿⢧⡘⡄⢃⣾⡏⠀⠀⠀⣾⡇⢸⢈⣼⡏⠀⠀⢰⣿⣾⣟⡿⣻⠇⠀⠀⢸⡏⠀⠀⢀⣿⠀⠀⠀⣼⠃⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣿⠆⠠⠀⠀⠀⠀⠀⢀⠔⣡⣾⠟⠙⢿⣳⡝⢮⣰⡿⠀⠀⠀⣰⡟⡄⢣⢸⡿⠀⠀⠀⣾⣿⡿⠋⢰⡟⠀⠀⢠⡿⠀⠀⠀⣼⠃⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠻⣇⠐⡠⢄⠠⠠⢔⣡⣾⠟⠁⠀⠀⠀⠙⢿⣧⣿⢃⡀⣀⢀⡛⣿⡧⢡⣿⣃⣀⣀⣸⣻⡏⠀⠀⣾⣁⣀⣀⣜⣿⠆⠀⢠⣟⣀⣀⣀⣛⣿⠆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠙⢿⣟⢿⣻⠛⡛⢛⠡⢂⣽⡿⣿⡿⠋⠉⠀⠀⠀⠉⠉⠉⠉⠉⠉⠀⠀⠈⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⣽⣹⢬⡂⣱⣾⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⣧⢻⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${NC}"
}

# Function to show banner
show_banner() {
    clear
    show_logo
    echo -e "${BLUE}====================================="
    echo -e "        NEW NVIM SETUP SCRIPT       "
    echo -e "====================================="
    echo -e "${GREEN}       Automate by Sunil [Prince4you]  "
    echo -e "\e[1;37m\e[44m\e[1;33mThis script automates Neovim setup with essential plugins and dependencies.\e[0m"
    echo -e "=====================================${NC}\n"
    echo -e "${GREEN}📌 YouTube: https://youtube.com/@noobcybertech2024"
    echo -e "📌 Facebook: https://www.facebook.com/share/1HrTAb9GoH/"
    echo -e "📌 Telegram: https://t.me/Annon4you"
    echo -e "📌 Instagram: annon_4you"
    echo -e "📌 WhatsApp: https://chat.whatsapp.com/DQHA1MZ46RYGlyIIOPZR2T\n"
}

# Show banner at script start
show_banner
sleep 5s
# Function to show social media and restart prompt every time terminal is cleared
show_social_and_prompt() {
    show_banner
    echo -e "${YELLOW}To apply changes, please restart Termux.${NC}"
}


# Function to check command success
check_success() {
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}$1 successful${NC}"
    else
        echo -e "${RED}$1 failed! Check log: $LOG_FILE${NC}"
        exit 1
    fi
}

# Check if running inside Termux
if [ -d "/data/data/com.termux/files/usr" ]; then
    PKG_MANAGER="pkg install -y"
else
    echo -e "${RED}This script is designed for Termux only.${NC}"
    exit 1
fi

# Check Internet Connection
ping -c 1 google.com &> /dev/null
if [ $? -ne 0 ]; then
    echo -e "${RED}No internet connection. Please connect and try again.${NC}"
    exit 1
fi

# Check and Install Dependencies
echo -e "${YELLOW}Checking required dependencies...${NC}"
for cmd in vim git curl unzip neovim; do
    if ! command -v $cmd &> /dev/null; then
        echo -e "${YELLOW}Installing $cmd...${NC}"
        $PKG_MANAGER $cmd || { echo -e "${RED}Failed to install $cmd. Exiting...${NC}"; exit 1; }
    fi
done
echo -e "${GREEN}All dependencies are installed.${NC}"

# Create font directory
mkdir -p font && cd font
echo -e "${YELLOW}Downloading JetBrainsMono font...${NC}"
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
check_success "Font download"

unzip -o JetBrainsMono.zip > /dev/null
mv JetBrainsMonoNerdFont-ExtraBold.ttf ~/.termux/font.ttf
check_success "Font setup"
sleep 1s
cd ..
clear

# Ask user before deleting old NVim config
read -p "Do you want to remove old Neovim configs? (y/n): " choice
if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    echo -e "${YELLOW}Removing old Neovim configurations...${NC}"
    rm -rf ~/.config/nvim ~/.local/state/nvim ~/.local/share/nvim
    check_success "Old Neovim cleanup"
else
    echo -e "${GREEN}Skipping Neovim cleanup.${NC}"
fi

# Clone NvChad
echo -e "${YELLOW}Cloning NvChad setup...${NC}"
git clone https://github.com/NvChad/starter ~/.config/nvim
sleep 2s
clear

echo -e "${RED}███╗   ██╗███████╗ ${YELLOW}██████╗ ██╗   ██╗██╗███╗   ███╗ "
echo -e "${GREEN}████╗  ██║██╔════╝${CYAN}██╔═══██╗██║   ██║██║████╗ ████║ "
echo -e "${MAGENTA}██╔██╗ ██║█████╗  ${BLUE}██║   ██║██║   ██║██║██╔██╗ ██║ "
echo -e "${CYAN}██║╚██╗██║██╔══╝  ${GREEN}██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ "
echo -e "${YELLOW}██║ ╚████║███████╗${RED}╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ "
echo -e "${BLUE}╚═╝  ╚═══╝╚══════╝ ${MAGENTA}╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝${NC}"
echo -e "${BLUE}====================================="
echo -e "      Setup Completed Successfully  "
echo -e "=====================================${NC}"
echo -e "${GREEN}Connect with me on Social Media:${NC}"
echo -e "📌 YouTube: NOOB CYBER TECH"
echo -e "📌 Facebook: SUNIL TAMANG"
echo -e "📌 Telegram: Annon4you"
echo -e "📌 Instagram: annon_4you"
echo -e "📌 WhatsApp: +977 9823842155"
echo -e "=====================================${NC}"
# Restart Termux Prompt
sleep 1s
echo -e "${YELLOW}To apply changes, please restart your Termux.${NC}"
sleep 1s
echo -e "${MAGENTA} ✅ To start Neovim, type: nvim and press Enter${NC}"
sleep 1s
echo -e "${CYAN}Enjoy your new Neovim setup! Happy coding!${NC}"
sleep 1s
