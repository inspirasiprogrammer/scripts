sudo apt-get update

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt install google-chrome-stable

sudo apt install doublecmd-gtk gparted vlc vim deluge
sudo apt install git curl xclip ffmpeg
sudo apt install build-essential cmake pkg-config
sudo apt install libx11-dev libatlas-base-dev libgtk-3-dev
sudo apt install python libboost-python-dev python-dev python-pip python3-dev python3-pip
sudo apt install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools



wget -O- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
# . ~/.bashrc
# nvm install 10

# sudo dpkg -i $HOME/Downloads/code_*.deb
# sudo apt -f install
# sudo dpkg -i $HOME/Downloads/code_*.deb

microsoft_gpg_download_path="$HOME/Downloads/microsoft.gpg"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > "$microsoft_gpg_download_path"
sudo cp "$microsoft_gpg_download_path" "/etc/apt/trusted.gpg.d/microsoft.gpg"
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code

# vlc, ffmpeg
