#!/bin/bash

set -e

sudo apt-get update
sudo apt-get install libncurses5 libpython2.7 libwebkit2gtk-4.0-37

mkdir -p ./STM32cube/tmp

cp  ./STM32_Source/en.st-stm32cubeide_1.13.2_18220_20230914_1601_amd64.deb_bundle.sh.zip ./STM32cube/tmp

cd ./STM32cube/tmp/

sudo unzip en.st-stm32cubeide_1.13.2_18220_20230914_1601_amd64.deb_bundle.sh.zip

sudo chmod 744 st-stm32cubeide_1.13.2_18220_20230914_1601_amd64.deb_bundle.sh

sudo ./st-stm32cubeide_1.13.2_18220_20230914_1601_amd64.deb_bundle.sh

cd ../../

sudo rm -rf ./STM32cube/

