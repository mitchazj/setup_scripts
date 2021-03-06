RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}  __  __ _       _                 _ "
echo -e " |  \\/  (_)     (_)               | |"
echo -e " | \\  / |_ _ __  _ _ __ ___   __ _| |"
echo -e " | |\\/| | | '_ \\| | '_ \` _ \\ / _\` | |"
echo -e " | |  | | | | | | | | | | | | (_| | |"
echo -e " |_|  |_|_|_| |_|_|_| |_| |_|\\__,_|_|${NC}\n"

echo -e "Welcome to your minimal server install! Let's get started :)\n"
echo -e "This script assumes that you have:"
echo -e "   - Created a non-root user with sudo access"
echo -e "   - Enabled automatic security updates"
echo -e "   - Enabled firewall with rules for ssh, http, and https"
echo -e "   - Disabled password authentication & enabled your default SSH keys\n"
echo -e "${GREEN}If this server was provisioned using your Vagrant default script, these requirements should already be satisfied <3${NC}"
echo -e "${GREEN}Continuing will install Nginx, Anaconda, .Net Core, and Docker for Ubuntu 16.04.${NC}\n"

read -p $'\e[31mContinue\e[0m (y/n)? ' -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

echo -e "${GREEN}Installing Nginx...${NC}"
sudo apt -qq install nginx -y
echo -e "${GREEN}Installing Anaconda...${NC}"
bash ./stacks/install_anaconda.sh
echo -e "${GREEN}Installing Dotnet...${NC}"
bash ./languages/install_dotnet.sh
echo -e "${GREEN}Installing Docker...${NC}"
bash ./apps/install_docker.sh

echo -e "\n==================================================="
echo -e "${GREEN}Minimal Install Completed <3${NC}"