#!/bin/bash

# Detener el script si ocurre un error
set -e

# Actualizar la lista de paquetes e instalar las dependencias necesarias
sudo apt-get update && sudo apt-get install -y \
    gawk wget git diffstat unzip texinfo gcc-multilib \
    chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping \
    python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint xterm bsdmainutils \
    libssl-dev libgmp-dev libmpc-dev lz4 zstd build-essential libncurses-dev libyaml-dev libssl-dev \
    repo \
    coreutils bsdmainutils sed curl bc lrzsz corkscrew cvs subversion mercurial \
    nfs-common nfs-kernel-server libarchive-zip-perl dos2unix texi2html libxml2-utils

# Set Python 3 as default
sudo apt-get install -y python-is-python3

# Configuraciones adicionales  para docker no sirve
echo 'options mmc_block perdev_minors=16' > /tmp/mmc_block.conf
sudo mv /tmp/mmc_block.conf /etc/modprobe.d/

mkdir -p $HOME/STM32MPU_workspace/tmp

cp ./STM32_Source/en.SDK-x86_64-stm32mp1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21.tar.gz $HOME/STM32MPU_workspace/tmp/
cd $HOME/STM32MPU_workspace/tmp
tar -xvzf en.SDK-x86_64-stm32mp1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21.tar.gz

mkdir -p ../STM32MP1-Ecosystem-v5.0.0/Developer-Package/SDK

chmod +x stm32mp1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21/sdk/st-image-weston-openstlinux-weston-stm32mp1-x86_64-toolchain-4.2.1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21.sh

sudo ./stm32mp1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21/sdk/st-image-weston-openstlinux-weston-stm32mp1-x86_64-toolchain-4.2.1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21.sh -d $HOME/STM32MPU_workspace/STM32MP1-Ecosystem-v5.0.0/Developer-Package/SDK

sudo rm -rf $HOME/STM32MPU_workspace/tmp

# Limpieza del caché de APT para reducir el tamaño
sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*