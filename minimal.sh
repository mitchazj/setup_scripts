RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "Welcome to your minimal server install! This script assumes that you have already:"
echo -e "   - Created a non-root user with sudo access"
echo -e "   - Enabled automatic security updates"
echo -e "   - Enabled firewall with rules for ssh, http, and https"
echo -e "   - Disabled password authentication and enabled your default SSH key\n"
echo -e "${GREEN}If this server was provisioned using your Vagrant default script, these requirements should already be satisfied.${NC}\n"
echo -e "====="
echo -e "${RED}Continuing will install Nginx, Anaconda, .Net Core, and Docker.${NC}"

read -p "Continue (y/n)? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

echo -e "Installing Nginx..."
sudo apt -qq install nginx -y
echo -e "Installing Anaconda..."
bash ./stacks/install_anaconda.sh >> /dev/null
echo -e "Installing Dotnet..."
bash ./languages/install_dotnet.sh >> /dev/null
echo -e "Installing Docker..."
bash ./apps/install_docker.sh >> /dev/null

echo "==="
echo "${GREEN}All done!${NC}"