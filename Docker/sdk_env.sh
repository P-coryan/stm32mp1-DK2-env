#!/bin/bash

# Detener el script si ocurre un error
set -e

# Actualizar la lista de paquetes e instalar las dependencias necesarias
apt-get update && apt-get install -y \
    gawk wget git diffstat unzip texinfo gcc-multilib \
    chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping \
    python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint xterm bsdmainutils \
    libssl-dev libgmp-dev libmpc-dev lz4 zstd build-essential libncurses-dev libyaml-dev libssl-dev \
    repo \
    coreutils bsdmainutils sed curl bc lrzsz corkscrew cvs subversion mercurial \
    nfs-common nfs-kernel-server libarchive-zip-perl dos2unix texi2html libxml2-utils

# Set Python 3 as default
apt-get install -y python-is-python3

# Configuraciones adicionales
echo 'options mmc_block perdev_minors=16' > /tmp/mmc_block.conf
mv /tmp/mmc_block.conf /etc/modprobe.d/

# Limpieza del caché de APT para reducir el tamaño
apt-get clean
rm -rf /var/lib/apt/lists/*
