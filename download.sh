echo "Downloading config..."

git clone https://github.com/yknot/config.git

cd config

sh install.sh

cd ..
rm -rf config
