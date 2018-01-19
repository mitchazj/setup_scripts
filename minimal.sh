echo "Installing Anaconda"
bash ./install_anaconda.sh >> /dev/null
echo "Installing Dotnet"
bash ./install_dotnet.sh >> /dev/null
echo "Installing Docker"
bash ./install_docker.sh >> /dev/null
echo "==="
echo "All done!"