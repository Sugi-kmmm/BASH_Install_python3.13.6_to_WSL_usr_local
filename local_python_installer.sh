sudo apt update
sudo apt install -y \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libgdbm-dev \
    libdb5.3-dev \
    libbz2-dev \
    libexpat1-dev \
    liblzma-dev \
    tk-dev \
    uuid-dev \
    wget \
    curl \
    git \
    libffi-dev
cd /tmp
rm -rf Python-3.13.6
wget https://www.python.org/ftp/python/3.13.6/Python-3.13.6.tgz
tar -xvf Python-3.13.6.tgz
cd Python-3.13.6

./configure --enable-optimizations --prefix=/usr/local
make -j$(nproc)
sudo make altinstall

echo '' >> ~/.bashrc
echo 'alias python_ul="/usr/local/bin/python3.13"' >> ~/.bashrc
echo 'alias pip_ul="/usr/local/bin/python3.13 -m pip"' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
