#!/usr/bin/env bash
#!/bin/bash

# Install build dependencies
sudo apt -y install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev tree lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip jq bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev imagemagick libbz2-dev libssl-dev lzma ncftp bash-completion python qemu-user-static python3

# Install repo tool
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
export PATH=~/bin:$PATH

# Additional installations or configurations can be added here
# ...

# Check if Python 3 is installed
if command -v python3 &> /dev/null; then
    # Set Python 3 as the default
    sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
    echo "Default Python version set to Python 3."
else
    echo "Python 3 is not installed. Please install Python 3 first."
fi
echo "Dependencies installed successfully."
