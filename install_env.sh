#!/bin/bash

# Ejecuta el primer script
./sdk_env.sh

# Verifica si el primer script se ejecutó con éxito
if [ $? -eq 0 ]; then
    echo "El script sdk.sh se ejecutó exitosamente. Continuando con cube.sh..."
    # Ejecuta el segundo script
    ./cube_env.sh
else
    echo "El script sdk.sh falló. Deteniendo la ejecución."
    exit 1
fi

# Verifica si el segundo script se ejecutó con éxito
if [ $? -eq 0 ]; then
    echo "El script cube.sh se ejecutó exitosamente."
    sudo ln -s /opt/st/stm32cubeide_1.13.2/stm32cubeide /usr/local/bin/stm32cubeide
else
    echo "El script cube.sh falló."
    exit 1
fi