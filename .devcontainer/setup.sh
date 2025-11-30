#!/bin/bash

# install dependencies
apt update && apt install -y curl wget unzip python3 python3-pip

# install Arduino CLI
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
mv bin/arduino-cli /usr/local/bin/
chmod +x /usr/local/bin/arduino-cli

# init
arduino-cli config init

# add ESP32 core
arduino-cli config add board_manager.additional_urls https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json

arduino-cli core update-index
arduino-cli core install esp32:esp32

echo "SETUP SELESAI"
