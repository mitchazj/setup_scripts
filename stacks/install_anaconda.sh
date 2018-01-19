mkdir downloads
wget "https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh" -O ./downloads/anaconda.sh
bash ./downloads/anaconda.sh -b -p ~/.anaconda
rm Anaconda3-4.2.0-Linux-x86_64.sh
echo 'export PATH="~/.anaconda/bin:$PATH"' >> ~/.bashrc 
source .bashrc
conda update conda